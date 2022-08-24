trigger LeadTrigger on Lead (before insert, before update, after insert, after update) {

if(Trigger.isBefore && Trigger.isInsert)
LeadTriggerHandler.updateCaseDates(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}