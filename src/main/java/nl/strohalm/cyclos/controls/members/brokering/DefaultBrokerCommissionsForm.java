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
package nl.strohalm.cyclos.controls.members.brokering;

import nl.strohalm.cyclos.utils.binding.MapBean;

import org.apache.struts.action.ActionForm;

/**
 * Form used to edit default broker commissions
 * @author Jefferson Magno
 */
public class DefaultBrokerCommissionsForm extends ActionForm {

    private static final long serialVersionUID = -6974666847285023878L;

    private Object            defaultBrokerCommission;

    public DefaultBrokerCommissionsForm() {
        defaultBrokerCommission = new MapBean(true, "id", "broker", "brokerCommission", "type", "value", "count", "when");
    }

    public Object getDefaultBrokerCommission() {
        return defaultBrokerCommission;
    }

    public void setDefaultBrokerCommission(final Object defaultBrokerCommission) {
        this.defaultBrokerCommission = defaultBrokerCommission;
    }

}