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
/**
 * 
 */
package nl.strohalm.cyclos.services.accounts.cards;

import java.util.List;

import nl.strohalm.cyclos.entities.Relationship;
import nl.strohalm.cyclos.entities.accounts.cards.CardType;
import nl.strohalm.cyclos.services.Service;
import nl.strohalm.cyclos.utils.access.AdminAction;
import nl.strohalm.cyclos.utils.access.DontEnforcePermission;
import nl.strohalm.cyclos.utils.access.Permission;

/**
 * 
 * @author rodrigo
 */
public interface CardTypeService extends Service {

    /**
     * Removes the specified CardType
     */
    @AdminAction(@Permission(module = "systemCardTypes", operation = "manage"))
    public int remove(final Long... ids);

    /**
     * Validate the card been persisted
     */
    @DontEnforcePermission(traceable = true)
    public void validate(final CardType cardType);

    /**
     * Get all CardTypes
     */
    List<CardType> listAll();

    /**
     * Loads a card type, fetching the specified relationships
     */
    @AdminAction(@Permission(module = "systemCardTypes", operation = "view"))
    CardType load(Long id, Relationship... fetch);

    /**
     * Saves the card type
     */
    @AdminAction(@Permission(module = "systemCardTypes", operation = "manage"))
    CardType save(CardType cardType);

    /**
     * Verify if has any card generated with given cardType
     */
    @AdminAction(@Permission(module = "systemCardTypes", operation = "view"))
    boolean searchWithCardType(long cardTypeId);
}
