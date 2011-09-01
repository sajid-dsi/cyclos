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
package nl.strohalm.cyclos.services.groups;

import java.util.Collection;

import nl.strohalm.cyclos.entities.access.Channel;
import nl.strohalm.cyclos.entities.accounts.AccountType;
import nl.strohalm.cyclos.entities.accounts.transactions.TransferType;
import nl.strohalm.cyclos.entities.groups.MemberGroup;

/**
 * Class used to store a member group's permissions
 * @author luis
 */
public class MemberGroupPermissionsDTO<MG extends MemberGroup> extends GroupPermissionsDTO<MG> {

    private static final long        serialVersionUID = -2413523317670088644L;
    private Collection<MemberGroup>  canViewProfileOfGroups;
    private Collection<MemberGroup>  canViewAdsOfGroups;
    private Collection<AccountType>  canViewInformationOf;
    private Collection<TransferType> memberToMemberTTs;
    private Collection<TransferType> memberToSystemTTs;
    private Collection<TransferType> selfPaymentTTs;
    private Collection<TransferType> chargebackTTs;
    private Collection<Channel>      requestPaymentByChannels;
    private Collection<MemberGroup>  canIssueCertificationToGroups;
    private Collection<MemberGroup>  canBuyWithPaymentObligationsFromGroups;

    public Collection<MemberGroup> getCanBuyWithPaymentObligationsFromGroups() {
        return canBuyWithPaymentObligationsFromGroups;
    }

    public Collection<MemberGroup> getCanIssueCertificationToGroups() {
        return canIssueCertificationToGroups;
    }

    public Collection<MemberGroup> getCanViewAdsOfGroups() {
        return canViewAdsOfGroups;
    }

    public Collection<AccountType> getCanViewInformationOf() {
        return canViewInformationOf;
    }

    public Collection<MemberGroup> getCanViewProfileOfGroups() {
        return canViewProfileOfGroups;
    }

    public Collection<TransferType> getChargebackTTs() {
        return chargebackTTs;
    }

    public Collection<TransferType> getMemberToMemberTTs() {
        return memberToMemberTTs;
    }

    public Collection<TransferType> getMemberToSystemTTs() {
        return memberToSystemTTs;
    }

    public Collection<Channel> getRequestPaymentByChannels() {
        return requestPaymentByChannels;
    }

    public Collection<TransferType> getSelfPaymentTTs() {
        return selfPaymentTTs;
    }

    public void setCanBuyWithPaymentObligationsFromGroups(final Collection<MemberGroup> canBuyWithPaymentObligationsFromGroups) {
        this.canBuyWithPaymentObligationsFromGroups = canBuyWithPaymentObligationsFromGroups;
    }

    public void setCanIssueCertificationToGroups(final Collection<MemberGroup> canIssueCertificationToGroups) {
        this.canIssueCertificationToGroups = canIssueCertificationToGroups;
    }

    public void setCanViewAdsOfGroups(final Collection<MemberGroup> canViewAdsOfGroups) {
        this.canViewAdsOfGroups = canViewAdsOfGroups;
    }

    public void setCanViewInformationOf(final Collection<AccountType> canViewInformationOf) {
        this.canViewInformationOf = canViewInformationOf;
    }

    public void setCanViewProfileOfGroups(final Collection<MemberGroup> canViewProfileOfGroups) {
        this.canViewProfileOfGroups = canViewProfileOfGroups;
    }

    public void setChargebackTTs(final Collection<TransferType> chargebackTTs) {
        this.chargebackTTs = chargebackTTs;
    }

    public void setMemberToMemberTTs(final Collection<TransferType> memberToMemberTTs) {
        this.memberToMemberTTs = memberToMemberTTs;
    }

    public void setMemberToSystemTTs(final Collection<TransferType> memberToSystemTTs) {
        this.memberToSystemTTs = memberToSystemTTs;
    }

    public void setRequestPaymentByChannels(final Collection<Channel> requestPaymentByChannels) {
        this.requestPaymentByChannels = requestPaymentByChannels;
    }

    public void setSelfPaymentTTs(final Collection<TransferType> selfPaymentTTs) {
        this.selfPaymentTTs = selfPaymentTTs;
    }

}