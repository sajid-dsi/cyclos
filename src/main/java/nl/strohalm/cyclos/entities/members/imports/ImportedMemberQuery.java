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
package nl.strohalm.cyclos.entities.members.imports;

import nl.strohalm.cyclos.utils.query.QueryParameters;

/**
 * Query parameters for imported members
 * @author luis
 */
public class ImportedMemberQuery extends QueryParameters {

    public static enum Status {
        ALL, SUCCESS, ERROR
    }

    private static final long serialVersionUID = 5077502876178599042L;
    private MemberImport      memberImport;
    private Status            status;
    private Integer           lineNumber;
    private String            nameOrUsername;

    public Integer getLineNumber() {
        return lineNumber;
    }

    public MemberImport getMemberImport() {
        return memberImport;
    }

    public String getNameOrUsername() {
        return nameOrUsername;
    }

    public Status getStatus() {
        return status;
    }

    public void setLineNumber(final Integer lineNumber) {
        this.lineNumber = lineNumber;
    }

    public void setMemberImport(final MemberImport memberImport) {
        this.memberImport = memberImport;
    }

    public void setNameOrUsername(final String nameOrUsername) {
        this.nameOrUsername = nameOrUsername;
    }

    public void setStatus(final Status status) {
        this.status = status;
    }

}
