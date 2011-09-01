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
package nl.strohalm.cyclos.controls.accounts.currencies;

import nl.strohalm.cyclos.annotations.Inject;
import nl.strohalm.cyclos.controls.ActionContext;
import nl.strohalm.cyclos.controls.BaseAction;
import nl.strohalm.cyclos.services.accounts.CurrencyService;
import nl.strohalm.cyclos.utils.validation.ValidationException;

import org.apache.struts.action.ActionForward;

/**
 * Action used to remove a currency
 * @author luis
 */
public class RemoveCurrencyAction extends BaseAction {

    private CurrencyService currencyService;

    @Inject
    public void setCurrencyService(final CurrencyService currencyService) {
        this.currencyService = currencyService;
    }

    @Override
    protected ActionForward executeAction(final ActionContext context) throws Exception {
        final RemoveCurrencyForm form = context.getForm();
        final long id = form.getCurrencyId();
        if (id <= 0L) {
            throw new ValidationException();
        }
        try {
            currencyService.remove(id);
            context.sendMessage("currency.removed");
        } catch (final Exception e) {
            context.sendMessage("currency.error.removing");
        }
        return context.getSuccessForward();
    }
}
