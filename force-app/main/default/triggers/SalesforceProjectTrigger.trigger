trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, before update, after insert, after update) {
    // if(trigger.isBefore)
    //SalesforceProjectTriggerHandler.validateProjectComppletion(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    if(Trigger.isAfter && Trigger.isInsert){
    SalesforceProjectTriggerHandler.updateProjectDescription(Trigger.newmap.keySet());
    }
    if(Trigger.isAfter && Trigger.isUpdate)
    SalesforceProjectTriggerHandler.spCompletedStatus(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    
    if (trigger.isAfter && trigger.isInsert) {
        Map<id, Salesforce_Project__c> spNewMap = trigger.newMap;
        Set<id> setID = spNewMap.keySet();
        SalesforceProjectTriggerHandler.updateProjectDescription(setID);
        
        //call handler method here.
        SalesforceProjectTriggerHandler.createDefaultSalesforceTicket(Trigger.New);
    }
}