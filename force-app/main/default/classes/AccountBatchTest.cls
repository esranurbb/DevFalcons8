@isTest
public with sharing class AccountBatchTest {
    @isTest
    private static void testMethod1() {
        List<Account> listAcc = new List<Account>();
        Account a = new Account();
        a.Name = 'SI Test';
        a.Industry = 'Energy';
        a.Type = 'Customer - Direct';
        listAcc.add(a);

        Account a1 = new Account();
        a1.Name = 'UI Test';
        a1.Industry = 'Energy';
        a1.Type = 'Customer - Direct';
        listAcc.add(a1);
        
        for (Integer i = 0; i < 200; i++) {
            Account a3 = new Account();
            a3.Name = 'UI Test';
            a3.Industry = 'Energy';
            a3.Type = 'Customer - Direct';
            listAcc.add(a3);
            system.debug(a3);        
        }
        insert listAcc;

        test.startTest();
        Database.executeBatch(new AccouuntsBatch(), 550);
        test.stopTest();

        List<Account> accs = [Select Id, Active__c, Description FROM Account where Active__c != 'No'];
        for (Account ac : accs) {
            system.assert(ac.Description.containsIgnoreCase('batch'));
            
        }
    }
}
