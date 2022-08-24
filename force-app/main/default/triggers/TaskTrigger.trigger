trigger TaskTrigger on Task (after insert, after update) {
if(Trigger.isAfter)
TaskTriggerHandler.updateLeadNextActivityDate()

}