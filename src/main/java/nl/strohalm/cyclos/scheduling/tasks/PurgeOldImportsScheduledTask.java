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
package nl.strohalm.cyclos.scheduling.tasks;

import java.util.Calendar;

import nl.strohalm.cyclos.services.ads.AdImportService;
import nl.strohalm.cyclos.services.elements.MemberImportService;

/**
 * Scheduled task used to remove old member and advertisement imports
 * 
 * @author luis
 */
public class PurgeOldImportsScheduledTask extends BaseScheduledTask {

    private MemberImportService memberImportService;
    private AdImportService     adImportService;

    public PurgeOldImportsScheduledTask() {
        super("Purge old member and advertisement imports", false);
    }

    public void setAdImportService(final AdImportService adImportService) {
        this.adImportService = adImportService;
    }

    public void setMemberImportService(final MemberImportService memberImportService) {
        this.memberImportService = memberImportService;
    }

    @Override
    protected void doRun(final Calendar time) {
        memberImportService.purgeOld(time);
        adImportService.purgeOld(time);
    }

}
