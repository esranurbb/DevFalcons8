trigger CaseTrigger on Case (before insert, before update, after insert, after update) {
if (Trigger.isAfter && Trigger.isInsert) {
     CaseTriggerHandlerPV.createDefaultTask(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
}


    // if(Trigger.isInsert)
    // system.debug('Before insert case trigger called.');
    // system.debug('Trigger size is ===== ' + trigger.size);

    // if(Trigger.isUpdate){
    //     system.debug('Before insert case trigger called.');
    //     system.debug('Trigger size is ===== ' + trigger.size);
    //     CaseTriggerHandler.countTriggerExecution++;
    //     system.debug('Number of times trigger executed====>' + CaseTriggerHandler.countTriggerExecution);
    
    //     CaseTriggerHandler.countRecordsUpdate += Trigger.size;
    //     system.debug('Number of records updated =====>' + CaseTriggerHandler.countRecordsUpdate);
    // }
  
}