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
package nl.strohalm.cyclos.controls.elements;

import org.apache.struts.action.ActionForm;

/**
 * Form used to change an element group
 * @author luis
 */
public abstract class ChangeElementGroupForm extends ActionForm {
    private static final long serialVersionUID = -5134425622999378200L;
    private long              elementId;
    private long              newGroupId;
    private String            comments;

    public String getComments() {
        return comments;
    }

    public long getElementId() {
        return elementId;
    }

    public long getNewGroupId() {
        return newGroupId;
    }

    public void setComments(final String comments) {
        this.comments = comments;
    }

    public void setElementId(final long elementId) {
        this.elementId = elementId;
    }

    public void setNewGroupId(final long newGroupId) {
        this.newGroupId = newGroupId;
    }

}
