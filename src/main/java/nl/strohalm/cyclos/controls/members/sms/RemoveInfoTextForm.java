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

package nl.strohalm.cyclos.controls.members.sms;

import nl.strohalm.cyclos.annotations.Inject;

import org.apache.struts.action.ActionForm;

/**
 * Form used to remove an infotext
 * @author jcomas
 */
public class RemoveInfoTextForm extends ActionForm {

    private static final long serialVersionUID = 1L;
    private long              infoTextId;

    public long getInfoTextId() {
        return infoTextId;
    }

    @Inject
    public void setInfoTextId(final long infoTextId) {
        this.infoTextId = infoTextId;
    }
}
