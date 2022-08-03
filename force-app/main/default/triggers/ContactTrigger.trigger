trigger ContactTrigger on Contact (before insert, after insert, before update, after update) {
    if(Trigger.isBefore){
        system.debug('Before trigger');
        if(Trigger.isInsert){
            system.debug('Before INSERT trigger');
        }
        if(Trigger.isUpdate){
            system.debug('Before UPDATE trigger');
        }
    }
    if(Trigger.isAfter){
        system.debug('After trigger');
        if(Trigger.isInsert){
            system.debug('AFTER INSERT trigger');
        }
        if(Trigger.isUpdate){
            system.debug('AFTER UPDATE trigger');
        }
    }


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


}