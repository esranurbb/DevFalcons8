public with sharing class LeadTriggerHandler {
    public static void updateCaseDates(List<Lead> leadTriggerNew, List<Lead> leadTriggerOld, Map<Id,Lead> leadTriggerNewMap, Map<Id,Lead> leadTriggerOldMap) {

        boolean wantToUpdatedate = false;
            for (Lead eachLead : leadTriggerNew) {
                if(leadTriggerOld == null){
                    wantToUpdatedate = true;
                
                }
                if(leadTriggerOld != null){
                    if(leadTriggerOldMap.get(eachLead.Id).Status != eachLead.Status){
                        wantToUpdatedate = true;

                    }
                }
                if(wantToUpdatedate){
                switch on eachLead.Status {
                    when null {
                        eachLead.Created_Date__c = datetime.now();     
                    }
                    when '' {
                        eachLead.Created_Date__c = datetime.now();     
                    }
                    when 'Open - Not Contacted' {  
                        eachLead.Created_Date__c = datetime.now();   
                    }
                    when 'Working - Contacted' {
                        eachLead.Contacted_Date__c = datetime.now();
                    }
                    when 'Closed - Converted' {
                        eachLead.Closed_Won_Date__c = datetime.now();
                    }
                    when 'Closed - Not Converted' {
                        eachLead.Closed_Lost_Date__c = datetime.now();
                    }
                }
            }
        }
    }
}
