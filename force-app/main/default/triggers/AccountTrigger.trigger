trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
    if(Trigger.isAfter && Trigger.isInsert){
        List<Account> newAccs = trigger.new;
        system.debug('Size is: ' + newAccs.size());
        for (Account acc : NewAccs) {
            system.debug('Acc ID is: ' + acc.Id + ' , Account Name is: ' + acc.Name + 'Acc Industry: ' + acc.Industry);
        }
    }
    
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
    
