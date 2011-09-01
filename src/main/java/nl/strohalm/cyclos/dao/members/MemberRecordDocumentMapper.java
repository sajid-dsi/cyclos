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
package nl.strohalm.cyclos.dao.members;

import nl.strohalm.cyclos.entities.members.Element;
import nl.strohalm.cyclos.entities.members.Member;
import nl.strohalm.cyclos.entities.members.records.MemberRecord;
import nl.strohalm.cyclos.utils.lucene.AbstractDocumentMapper;
import nl.strohalm.cyclos.utils.lucene.DocumentBuilder;

import org.apache.lucene.document.Document;

/**
 * Maps {@link MemberRecord}s to lucene {@link Document}s
 * 
 * @author luis
 */
public class MemberRecordDocumentMapper extends AbstractDocumentMapper<MemberRecord> {

    @Override
    protected void process(final DocumentBuilder document, final MemberRecord memberRecord) {
        final Element element = fetch(memberRecord.getElement());
        final Element createdBy = memberRecord.getBy();
        final Element modifiedBy = memberRecord.getModifiedBy();

        document.add("type", memberRecord.getType());
        document.add("date", memberRecord.getDate());
        // Set the last modified as date too, so searches will match either
        document.add("date", memberRecord.getLastModified());
        document.add("element", element);
        document.add("element.name", element.getName());
        document.add("element.username", element.getUsername());
        document.add("element.group", element.getGroup());
        if (element instanceof Member) {
            document.add("element.broker", ((Member) element).getBroker());
        }
        document.add("by", createdBy);
        document.add("by.name", createdBy.getName());
        document.add("by.username", createdBy.getUsername());
        if (modifiedBy != null) {
            // Set modified by as by too, as searches are equal
            document.add("by", modifiedBy);
            document.add("by.name", modifiedBy.getName());
            document.add("by.username", modifiedBy.getUsername());
        }
        document.add("customValues", memberRecord.getCustomValues());
    }

}
