trigger SalesforceProjectTrigger on Salesforce_Project__c (before insert, after insert, before update, after update) {
    if(Trigger.isAfter && Trigger.isInsert){
        SalesforceProjectTriggerHandler.createSalesforceTicket(Trigger.New);
    }

}