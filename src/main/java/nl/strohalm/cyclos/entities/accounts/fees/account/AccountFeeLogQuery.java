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
package nl.strohalm.cyclos.entities.accounts.fees.account;

import java.util.Arrays;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;

import nl.strohalm.cyclos.entities.accounts.MemberAccountType;
import nl.strohalm.cyclos.utils.query.QueryParameters;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.ArrayUtils;

/**
 * Search parameters for account fee logs
 * @author luis
 */
public class AccountFeeLogQuery extends QueryParameters {

    private static final long                serialVersionUID = -1381941900820049545L;
    private Collection<AccountFee>           accountFees;
    private Collection<AccountFeeLog.Status> statusCollection;
    private Calendar                         periodStartAt;
    private MemberAccountType                accountType;
    private boolean                          returnScheduled;
    private Boolean                          accountFeeEnabled;

    public AccountFee getAccountFee() {
        if (accountFees == null || accountFees.isEmpty()) {
            return null;
        } else {
            return accountFees.iterator().next();
        }
    }

    public Boolean getAccountFeeEnabled() {
        return accountFeeEnabled;
    }

    public Collection<AccountFee> getAccountFees() {
        return accountFees;
    }

    public MemberAccountType getAccountType() {
        return accountType;
    }

    public Calendar getPeriodStartAt() {
        return periodStartAt;
    }

    public AccountFeeLog.Status getStatus() {
        return CollectionUtils.isEmpty(statusCollection) ? null : statusCollection.iterator().next();
    }

    public Collection<AccountFeeLog.Status> getStatusCollection() {
        return statusCollection;
    }

    public boolean isReturnScheduled() {
        return returnScheduled;
    }

    public void setAccountFee(final AccountFee accountFee) {
        accountFees = Collections.singleton(accountFee);
    }

    public void setAccountFeeEnabled(final Boolean accountFeeEnabled) {
        this.accountFeeEnabled = accountFeeEnabled;
    }

    public void setAccountFees(final Collection<AccountFee> accountFees) {
        this.accountFees = accountFees;
    }

    public void setAccountType(final MemberAccountType accountType) {
        this.accountType = accountType;
    }

    public void setPeriodStartAt(final Calendar periodStartAt) {
        this.periodStartAt = periodStartAt;
    }

    public void setReturnScheduled(final boolean returnScheduled) {
        this.returnScheduled = returnScheduled;
    }

    public void setStatus(final AccountFeeLog.Status status) {
        setStatusCollection(status == null ? null : Collections.singleton(status));
    }

    public void setStatusCollection(final Collection<AccountFeeLog.Status> statusCollection) {
        this.statusCollection = statusCollection;
        // When status is scheduled, mark return scheduled as true, or nothing would be returned
        if (statusCollection != null && statusCollection.contains(AccountFeeLog.Status.SCHEDULED)) {
            returnScheduled = true;
        }
    }

    public void setStatusList(final AccountFeeLog.Status... status) {
        setStatusCollection(ArrayUtils.isEmpty(status) ? null : Arrays.asList(status));
    }

}