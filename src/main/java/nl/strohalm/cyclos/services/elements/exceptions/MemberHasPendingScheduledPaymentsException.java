/*
    This file is part of Cyclos <http://project.cyclos.org>

    Cyclos is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    Cyclos is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with Cyclos. If not, see <http://www.gnu.org/licenses/>.

 */
package nl.strohalm.cyclos.services.elements.exceptions;

import nl.strohalm.cyclos.entities.groups.MemberGroup;

/**
 * Exception thrown when trying to remove a member that has pending scheduled payments
 * @author ameyer
 */
public class MemberHasPendingScheduledPaymentsException extends ChangeMemberGroupException {

    private static final long serialVersionUID = 1L;

    public MemberHasPendingScheduledPaymentsException(final MemberGroup newGroup) {
        super(newGroup.isRemoved() ? "remove.hasPendingScheduledPayments" : "move.hasPendingScheduledPayments");
    }

}
