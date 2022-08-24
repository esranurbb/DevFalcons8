trigger ContactTrigger on Contact (before insert, before update, after insert, after update, after delete, after undelete) {

    if(Trigger.isAfter){
        set<id> accIDs = new Set<Id>();

        if(trigger.isInsert || trigger.isUpdate || trigger.isUndelete){
            for (Contact eachContact : trigger.new) {
                if(eachContact.AccountId != null){
                    accIds.add(eachContact.Accountid);
                }
            }
        }

        if(trigger.isUpdate || trigger.isDelete){
            for (Contact eachContact : trigger.old) {
                if(eachContact.AccountId != null){
                    accIds.add(eachContact.AccountId);
                }
            }
        }
        ContactTriggerHandler.countOfAccContacts(accIds);
    }




    // if(Trigger.isBefore && Trigger.isUpdate){
    //     ContactTriggerHandler.contactUpdateValidation1(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    //     ContactTriggerHandler.contactUpdateValidation2(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    // }
}


    // if(Trigger.isBefore){
    //     system.debug('Before trigger');
    //     if(Trigger.isInsert){
    //         system.debug('Before INSERT trigger');
    //     }
    //     if(Trigger.isUpdate){
    //         system.debug('Before UPDATE trigger');
    //     }
    // }
    // if(Trigger.isAfter){
    //     system.debug('After trigger');
    //     if(Trigger.isInsert){
    //         system.debug('AFTER INSERT trigger');
    //     }
    //     if(Trigger.isUpdate){
    //         system.debug('AFTER UPDATE trigger');
    //     }
    // }


    // if(Trigger.isInsert){
    //     system.debug('INSERT trigger');
    //     if(Trigger.isBefore){
    //         system.debug('Before insert was called.');
    //     }
    //     if(Trigger.isAfter){
    //         system.debug('AFTER insert was called.');
    //     }
    // }
    // if(Trigger.isUpdate){
    //     system.debug('UPDATE trigger');
    //     if(Trigger.isBefore){
    //         system.debug('Before UPDATE was called.');
    //     }
    //     if(Trigger.isAfter){
    //         system.debug('AFTER UPDATE was called.');
    //     }
    // }


