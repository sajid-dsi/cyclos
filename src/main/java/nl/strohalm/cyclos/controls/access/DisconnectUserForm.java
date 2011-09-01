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
package nl.strohalm.cyclos.controls.access;

import org.apache.struts.action.ActionForm;

/**
 * Form used to disconnect an user
 * @author luis
 */
public class DisconnectUserForm extends ActionForm {
    private static final long serialVersionUID = 6522947296078551005L;
    private String            sessionId;
    private long              userId;
    private boolean           backToProfile;

    public String getSessionId() {
        return sessionId;
    }

    public long getUserId() {
        return userId;
    }

    public boolean isBackToProfile() {
        return backToProfile;
    }

    public void setBackToProfile(final boolean backToProfile) {
        this.backToProfile = backToProfile;
    }

    public void setSessionId(final String sessionId) {
        this.sessionId = sessionId;
    }

    public void setUserId(final long userId) {
        this.userId = userId;
    }
}
