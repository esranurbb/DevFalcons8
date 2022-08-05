trigger AccountTrigger on Account (before insert, after insert, before update, after update) {

    if(Trigger.isAfter && Trigger.isUpdate){
        integer countWS = 0;
        for (ID eachAccId : trigger.newMap.keySet()) {
            string oldWeb = trigger.oldMap.get(eachAccId).Website;
            Account newAcc = trigger.newMap.get(eachAccId);        
        if(oldWeb!=newAcc.Website){
            system.debug('The Account: ' + newAcc.Name + ', website is: ' + newAcc.website);
            countWS++;
        }

        
    }
    system.debug('Number of accounts website updated: ' + countWS);
}




    // if(Trigger.isAfter && Trigger.isUpdate){
        //     map<id, Account> trgNewMap = trigger.newMap;
        //     map<id, Account> trgOldMap = trigger.oldMap;

        //     for (ID eachId : trgNewMap.keySet()) {
        //         system.debug('Acc Id: ' + eachId);
        //         Account newAcc = trgNewMap.get(eachId);
        //         system.debug('New acc name: ' + newAcc.Name);
        //         Account oldAcc = trgOldMap.get(eachId);
        //         system.debug('Old acc name: ' + oldAcc.Name);
        //     }

        // }
    

        // if (trigger.isBefore && trigger.isInsert) 
        //     system.debug('before insert trigger trigger.oldMap = ' + trgOldMap);
        //     system.debug('before insert trigger trigger.newMap = ' + trgNewMap);

        // if (trigger.isBefore && trigger.isUpdate) 
        //     system.debug('before update trigger trigger.oldMap = ' + trgOldMap);
        //     system.debug('before update trigger trigger.newMap = ' + trgNewMap);
      
        // if (trigger.isAfter && trigger.isInsert) 
        //     system.debug('after insert trigger trigger.oldMap = ' + trgOldMap);
        //     system.debug('after insert trigger trigger.newMap = ' + trgNewMap);

        // if (trigger.isAfter && trigger.isUpdate) 
        //     system.debug('after update trigger trigger.oldMap = ' + trgOldMap);   
        //     system.debug('after update trigger trigger.newMap = ' + trgNewMap);
    
    
    // if(Trigger.isAfter && Trigger.isUpdate){
            
    //     List<Account> oldAccounts = trigger.old;
    //     List<Account> newAccounts = trigger.new;
    //     for(Account oldAcc : trigger.old)
    //         system.debug('Old acc id: ' + oldAcc.id + ', Old acc name: ' + oldAcc.Name);
    
    //     for(Account newAcc : trigger.new)
    //     system.debug('New acc id: ' + newAcc.id + ', New acc name: ' + newAcc.Name);
    // }
  
    
    // system.debug('====Trigger START====');
    // if (trigger.isBefore && trigger.isInsert) {
    //     system.debug('before insert trigger trigger.old = ' + trigger.old);
    // }
    // system.debug('====Trigger END====');
    // if (trigger.isAfter && trigger.isInsert) {
    //     system.debug('after insert trigger trigger.old = ' + trigger.old);
    // }
    
    // if (trigger.isBefore && trigger.isUpdate) {
    //     system.debug('before update trigger trigger.old = ' + trigger.old);
    // }
    // if (trigger.isAfter && trigger.isUpdate) {
    //     system.debug('after update trigger trigger.old = ' + trigger.old);
    // }
   

    /*List<account> newAccounts = trigger.new; //is LIST<sObject>
    if(trigger.isAfter && trigger.isInsert){
        system.debug('after trigger trigger.new = ' + newAccounts);
        system.debug('size of trigger.new = ' + newAccounts.size());

        for (account eachAcc : newAccounts) {
            system.debug('account id is ' + eachacc.id + ', each account name is ' + eachAcc.name);
        }

    } */
    
    /*
    system.debug('trigger.isBefore = ' + trigger.isBefore);
    system.debug('trigger.isAfter = ' + trigger.isAfter);
    system.debug('trigger.isInsert = ' + trigger.isInsert);
    system.debug('trigger.isUpdate = ' + trigger.isUpdate);
    //INSERT
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('After Insert trigger called.');
    }
    if (trigger.isBefore && trigger.isInsert) {
        system.debug('Before Insert trigger called.');
    }

    //UPDATE
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('After Update trigger called.');
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('Before Update trigger called.');
    }
    
    
    */
    /*
    //this should print only in BEFORE.
    if(Trigger.isBefore){
        system.debug('Before INSERT trigger called');
    }
    if(Trigger.isAfter){
        //this should print only in AFTER.
        system.debug('After INSERT trigger called');
    }

    */
// }
    
    
    
    // if(Trigger.isAfter && Trigger.isInsert){
    //     List<Account> newAccs = trigger.new;
    //     system.debug('Size is: ' + newAccs.size());
    //     for (Account acc : NewAccs) {
    //         system.debug('Acc ID is: ' + acc.Id + ' , Account Name is: ' + acc.Name + 'Acc Industry: ' + acc.Industry);
    //     }
    // }
    
}
        // if(Trigger.isAfter){
        // system.debug('After trigger trigger.new = ' + newAccs);




    // if(Trigger.isBefore && Trigger.isInsert)
    //     system.debug('Before insert trigger called, yuppiiii');
    // if(Trigger.isAfter && Trigger.isInsert)
    //     system.debug('After insert trigger called, yaaayyyy');
    // if(Trigger.isBefore && Trigger.isUpdate)
    //     system.debug('Before update trigger called, yuppiiii');
    // if(Trigger.isAfter && Trigger.isUpdate)
    //     system.debug('After update trigger called, yuppiiii');





    // system.debug('------START------');
    // if(Trigger.isInsert){
    //     system.debug('Before insert trigger called.');
    // }
    // if(Trigger.isUpdate){
    //     system.debug('Before update trigger called.');
    // }
    // system.debug('------END------');
   
    // if(Trigger.isBefore){
    //     system.debug('Before INSERT trigger called.');
    // }
    // if(Trigger.isAfter){
    //     system.debug('After INSERT trigger called.');
    // }
    
