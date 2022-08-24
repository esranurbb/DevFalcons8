@isTest
public with sharing class DmlDemoTest {
@isTest
    private static void testInsertDML1() {
        DmlDemo.dmlInsertDemo_StndObj();
        List<Account> checkAcc = [Select id, Name from Account];
        system.assertEquals(1, checkAcc.size());
        system.assertEquals('Little Cake', checkAcc[0].Name);
        
    }
    @isTest
    private static void testInsertDML2() {
        DmlDemo.dmlInsertDemo_cstObj();
        List<Salesforce_Project__c> checkAProject = [Select id, Name from Salesforce_Project__c];
        system.assertEquals(1, checkAProject.size());
        system.assertEquals('SP-100014', checkAProject[0].Name);
    }
    
    @isTest
    private static void testUpdateDML3() {
        Account acc = new Account();
        acc.Name = 'SoftInnovas Inc.';
        insert acc;

        DmlDemo.dmlInsertRelatedDemo_1();
        List<Contact> contacts = [Select id, accountId, Name FROM Contact];
        system.assertEquals(1, contacts.size());
        system.assertEquals(acc.Id, contacts[0].AccountId);
    }

    @isTest
    private static void testUpdateMulti() {
        List<account> listAccount = new list<account>();

        for (Integer i = 0; i < 200; i++) {
            account acc = new account();
            acc.name = 'SoftInnovas 15Aug v'+i;
            acc.AccountNumber = 'Accis-'+i;
            acc.Active__c = 'Yes';
            listAccount.add(acc);
        }
         if (!listAccount.isEmpty()) {
            insert listAccount;
        }
        test.startTest();
        DmlDemo.dmlMultRecordUpdate();
        test.stopTest();
        List<Account> accs = [Select Id, Name From Account];
        system.assert(accs[0].Name.contains('via B.0'));
        
        
    }


}
