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
package nl.strohalm.cyclos.controls.members;

import nl.strohalm.cyclos.controls.ActionContext;
import nl.strohalm.cyclos.controls.elements.RemoveElementAction;

import org.apache.struts.action.ActionForward;

/**
 * Action used to remove a member
 * @author luis
 */
public class RemoveMemberAction extends RemoveElementAction {

    @Override
    protected ActionForward doRemove(final long id, final ActionContext context) {
        try {
            getElementService().removeMember(id);
            context.sendMessage("changeGroup.member.permanentlyRemovedMessage");
            return context.getSuccessForward();
        } catch (final Exception e) {
            return context.sendError("changeGroup.error.remove.activeMember");
        }
    }

}