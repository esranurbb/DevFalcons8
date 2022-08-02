trigger AccountTrigger on Account (before insert, after insert) {
    
    system.debug('------START------');
    if(Trigger.isBefore){
        system.debug('Before INSERT trigger called.');
    }
    if(Trigger.isAfter){
        system.debug('After INSERT trigger called.');
    }
    system.debug('------END------');

}
