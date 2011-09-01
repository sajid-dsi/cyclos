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
package nl.strohalm.cyclos.services.elements;

import java.util.List;

import nl.strohalm.cyclos.entities.Relationship;
import nl.strohalm.cyclos.entities.members.RegistrationAgreement;
import nl.strohalm.cyclos.services.Service;
import nl.strohalm.cyclos.utils.access.AdminAction;
import nl.strohalm.cyclos.utils.access.Permission;
import nl.strohalm.cyclos.utils.validation.ValidationException;

/**
 * Registration agreement service
 * 
 * @author luis
 */
public interface RegistrationAgreementService extends Service {

    /**
     * Returns a list with all registration agreements
     */
    @AdminAction(@Permission(module = "systemRegistrationAgreements", operation = "view"))
    List<RegistrationAgreement> listAll();

    /**
     * Loads a registration agreement, fetching the specified relationships
     */
    @AdminAction(@Permission(module = "systemRegistrationAgreements", operation = "view"))
    RegistrationAgreement load(Long id, Relationship... fetch);

    /**
     * Remove the given registration agreement
     */
    @AdminAction(@Permission(module = "systemRegistrationAgreements", operation = "manage"))
    boolean remove(Long id);

    /**
     * Saves the specified registration agreement
     */
    @AdminAction(@Permission(module = "systemRegistrationAgreements", operation = "manage"))
    RegistrationAgreement save(RegistrationAgreement registrationAgreement);

    /**
     * Validates the specified registraiton agreement
     * @throws ValidationException if validation fails
     */
    @AdminAction(@Permission(module = "systemRegistrationAgreements", operation = "manage"))
    void validate(RegistrationAgreement registrationAgreement) throws ValidationException;
}
