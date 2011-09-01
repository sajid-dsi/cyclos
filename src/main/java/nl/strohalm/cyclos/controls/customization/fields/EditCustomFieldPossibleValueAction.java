/*
   This file is part of Cyclos.

   Cyclos is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2 of the License, or
   (at your option) any later version.

   Cyclos is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with Cyclos; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA

 */
package nl.strohalm.cyclos.controls.customization.fields;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

import nl.strohalm.cyclos.annotations.Inject;
import nl.strohalm.cyclos.controls.ActionContext;
import nl.strohalm.cyclos.controls.BaseFormAction;
import nl.strohalm.cyclos.dao.exceptions.DaoException;
import nl.strohalm.cyclos.entities.accounts.transactions.TransferType;
import nl.strohalm.cyclos.entities.customization.fields.CustomField;
import nl.strohalm.cyclos.entities.customization.fields.CustomFieldPossibleValue;
import nl.strohalm.cyclos.entities.customization.fields.MemberRecordCustomField;
import nl.strohalm.cyclos.entities.customization.fields.PaymentCustomField;
import nl.strohalm.cyclos.services.customization.CustomFieldService;
import nl.strohalm.cyclos.utils.ActionHelper;
import nl.strohalm.cyclos.utils.binding.BeanBinder;
import nl.strohalm.cyclos.utils.binding.DataBinder;
import nl.strohalm.cyclos.utils.binding.PropertyBinder;
import nl.strohalm.cyclos.utils.conversion.IdConverter;
import nl.strohalm.cyclos.utils.validation.RequiredError;
import nl.strohalm.cyclos.utils.validation.ValidationException;

import org.apache.commons.lang.StringUtils;
import org.apache.struts.action.ActionForward;

/**
 * Action used to edit a custom field possible value
 * @author luis
 */
public class EditCustomFieldPossibleValueAction extends BaseFormAction {

    private CustomFieldService                   customFieldService;
    private DataBinder<CustomFieldPossibleValue> dataBinder;

    public CustomFieldService getCustomFieldService() {
        return customFieldService;
    }

    public DataBinder<CustomFieldPossibleValue> getDataBinder() {
        if (dataBinder == null) {
            final BeanBinder<CustomFieldPossibleValue> binder = BeanBinder.instance(CustomFieldPossibleValue.class);
            binder.registerBinder("id", PropertyBinder.instance(Long.class, "id", IdConverter.instance()));
            binder.registerBinder("field", PropertyBinder.instance(CustomField.class, "field"));
            binder.registerBinder("parent", PropertyBinder.instance(CustomFieldPossibleValue.class, "parent"));
            binder.registerBinder("value", PropertyBinder.instance(String.class, "value"));
            binder.registerBinder("enabled", PropertyBinder.instance(Boolean.TYPE, "enabled"));
            binder.registerBinder("defaultValue", PropertyBinder.instance(Boolean.TYPE, "defaultValue"));
            dataBinder = binder;
        }
        return dataBinder;
    }

    @Inject
    public void setCustomFieldService(final CustomFieldService customFieldService) {
        this.customFieldService = customFieldService;
    }

    @Override
    protected ActionForward handleSubmit(final ActionContext context) throws Exception {

        final Collection<CustomFieldPossibleValue> resolveAllValues = resolveAllValues(context);
        Boolean isInsert = null;
        CustomField field = null;
        CustomFieldPossibleValue parentValue = null;
        try {
            for (CustomFieldPossibleValue possibleValue : resolveAllValues) {
                if (isInsert == null) {
                    isInsert = possibleValue.getId() == null;
                    field = getFetchService().fetch(possibleValue.getField());
                    parentValue = possibleValue.getParent();
                }
                final CustomField customField = getFetchService().fetch(possibleValue.getField(), CustomFieldPossibleValue.Relationships.FIELD);
                switch (customField.getNature()) {
                    case OPERATOR:
                        possibleValue = customFieldService.saveOperator(possibleValue);
                        break;
                    case PAYMENT:
                        possibleValue = customFieldService.savePayment(possibleValue);
                        break;
                    case MEMBER_RECORD:
                        possibleValue = customFieldService.saveMemberRecord(possibleValue);
                        break;
                    default:
                        possibleValue = customFieldService.save(possibleValue);
                        break;
                }

            }
            context.sendMessage(isInsert ? "customField.possibleValue.inserted" : "customField.possibleValue.modified");

            final Map<String, Object> params = new HashMap<String, Object>();
            params.put("fieldId", field.getId());

            switch (field.getNature()) {
                case MEMBER_RECORD:
                    final MemberRecordCustomField memberRecordField = (MemberRecordCustomField) field;
                    final Long memberRecordTypeId = memberRecordField.getMemberRecordType().getId();
                    params.put("memberRecordTypeId", memberRecordTypeId);
                    break;
                case PAYMENT:
                    final PaymentCustomField paymentField = (PaymentCustomField) field;
                    final TransferType transferType = paymentField.getTransferType();
                    params.put("transferTypeId", transferType.getId());
                    params.put("accountTypeId", transferType.getFrom().getId());
                    break;
            }

            if (parentValue != null) {
                params.put("parentValueId", parentValue.getId());
            }
            return ActionHelper.redirectWithParams(context.getRequest(), context.getSuccessForward(), params);
        } catch (final DaoException e) {
            return context.sendError("customField.possibleValue.error.saving");
        }
    }

    @Override
    protected void validateForm(final ActionContext context) {
        final Collection<CustomFieldPossibleValue> possibleValues = resolveAllValues(context);
        // Ensure there's at least one value
        if (possibleValues.isEmpty()) {
            throw new ValidationException("multipleValues", "customField.possibleValue.value", new RequiredError());
        }
        // Validate each value
        for (final CustomFieldPossibleValue possibleValue : possibleValues) {
            customFieldService.validate(possibleValue);
        }
    }

    private Collection<CustomFieldPossibleValue> resolveAllValues(final ActionContext context) {
        final EditCustomFieldPossibleValueForm form = context.getForm();
        final CustomFieldPossibleValue possibleValue = getDataBinder().readFromString(form.getPossibleValue());
        if (possibleValue.isTransient()) {
            // When inserting, multiple values may be created, one per line
            final String[] lines = StringUtils.split(form.getMultipleValues(), '\n');
            final Collection<CustomFieldPossibleValue> possibleValues = new ArrayList<CustomFieldPossibleValue>();
            for (String value : lines) {
                value = StringUtils.trimToNull(value);
                if (value == null) {
                    continue;
                }
                // Get each possible value
                final CustomFieldPossibleValue current = (CustomFieldPossibleValue) possibleValue.clone();
                current.setValue(value);
                possibleValues.add(current);
            }
            return possibleValues;
        } else {
            return Collections.singleton(possibleValue);
        }
    }

}