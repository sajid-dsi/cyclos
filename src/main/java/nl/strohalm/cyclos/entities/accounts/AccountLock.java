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
package nl.strohalm.cyclos.entities.accounts;

import nl.strohalm.cyclos.entities.Entity;

/**
 * AccountLocks just contains the account relationship and are used to lock accounts, independent of the account themselves, as locking accounts could
 * have several other impacts, like not allowing inserting transfers from/to that account
 * 
 * @author luis
 */
public class AccountLock extends Entity {

    private static final long serialVersionUID = -3528264757301419903L;

    public AccountLock() {
    }

    public AccountLock(final Account account) {
        setId(account.getId());
    }

    @Override
    public String toString() {
        return "AccountLock#" + getId();
    }

}
