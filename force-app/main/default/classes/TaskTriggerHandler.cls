public with sharing class TaskTriggerHandler {
    public static void updateLeadNextActivityDate(List<Task> taskTriggerNew, List<Task> taskTriggerOld, Map<Id, Task> taskTriggerNewMap, Map<Id, Task> taskTriggerOldMap) {
        set<Id> setOfLeadIds = new set<Id>();
        if(taskTriggerOld == null){
            for (Task t : taskTriggerNew) {
                if(t.WhoId != null && t.WhoId.getSobjectType().getDescribe().getName() == 'Lead' && t.ActivityDate != null)
                setOfLeadIds.add(t.WhoId);
            }   
        }
        List<Lead> leads = [Select id, name, Next_Activity_Date__c, (Select WhoId, ActivityDate, Status From Tasks WHERE Status != 'Completed' and Status != 'Deferred' ORDER BY ActivityDate LIMIT 1) From Lead WHERE Id in :setOfLeadIds];
    
        List<Lead> updLeads = new List<Lead>();
        for (Lead eachLead : leads) {
            if(eachLead.Tasks != null && !eachLead.Tasks.isEmpty())
            Task t =eachLead.Tasks[0];
            eachLead.Next_Activity_Date__c = 
            
        }
    }
}
