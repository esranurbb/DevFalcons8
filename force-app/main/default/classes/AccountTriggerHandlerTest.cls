@isTest
public with sharing class AccountTriggerHandlerTest {
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
        a1.Active__c = 'Yes';
        listAcc.add(a1);

        Account a2 = new Account();
        a2.Name = 'PI Test';
        a2.Industry = 'Banking';
        a2.Type = 'Customer - Direct';
        listAcc.add(a2);
        insert listAcc;

        for (Account acc : listAcc) {
            acc.Active__c = 'Yes';
        update listAcc;


        List<Account> accs2 = [Select id, Description, Active__c From Account Where Active__c = 'Yes'];
        for (Account eachAcc : accs2) {
            system.assertEquals('Account is active, go to party.', accs2[0].Description);
            
        }
        }    
    }
    @isTest
    private static void testVIPFieldUpdate() {
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
        a1.Active__c = 'Yes';
        listAcc.add(a1); 
        insert listAcc;

        List<Contact> listContacts = new List<Contact>();
        for (Integer i = 0; i < 200; i++) {
            Contact c = new Contact();
            c.LastName = 'Test Contact ' + i;
            if(i<100){
                c.AccountId = a.Id;
            }else{
                c.AccountId = a1.Id;
            }
            listContacts.add(c);
        }
        insert listContacts;

        for (Account eachAcc : listAcc) {
            eachAcc.VIP__c = true;
        }
        update listAcc;

        List<Contact> contacts = [Select Id, Name, VIP__c From Contact];
        system.assertEquals(true, contacts[0].VIP__c);
    }
}