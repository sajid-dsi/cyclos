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
package nl.strohalm.cyclos.services.customization.exceptions;

import nl.strohalm.cyclos.exceptions.ApplicationException;

/**
 * Exception thrown when an exception occurred while trying to upload a file
 * @author Jefferson Magno
 */
public class CannotUploadFileException extends ApplicationException {

    private static final long serialVersionUID = -5902880063974368281L;

    public CannotUploadFileException() {
        super();
    }

    public CannotUploadFileException(final Throwable cause) {
        super(cause);
    }

}
