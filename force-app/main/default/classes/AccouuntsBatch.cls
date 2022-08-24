public with sharing class AccouuntsBatch implements Database.Batchable<SObject>, database.stateful{
    
    integer updateCount = 0;

    public Database.QueryLocator start(Database.BatchableContext bc){
        system.debug('----INSIDE START----');
        Database.QueryLocator q1 = Database.getQueryLocator([Select Id, Description, Active__c FROM Account]);
        return q1;
    }
    
    public void execute(Database.BatchableContext bc, List<Account> scope){
        system.debug('----INSIDE EXECUTE----');
        List<Account> updAcc = new List<Account>();
        for (Account acc : scope) {
            if(acc.Active__c != 'No'){
                acc.Description += '....updated via Batch.';
                updAcc.add(acc);
                updateCount++;
            }
            
        }
        update updAcc; 
    }

    public void finish(Database.BatchableContext bc){
        SYSTEM.DEBUG('----INSIDE FINISH----');
        system.debug('Batch is now complete.');
        system.debug('Update count is ' + updateCount);
    }
}
S