@isTest
public with sharing class SoqlDemo2Test {
    @TestSetup
    static void makeData(){
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
        Account a2 = new Account();
        a2.Name = 'PI Test';
        a2.Industry = 'Banking';
        a2.Type = 'Customer - Direct';
        listAcc.add(a2);
        insert listAcc;

        list<contact> listContact = new list<contact>();
        for (Integer i = 0; i < 300; i++) {
            contact cnt = new contact();
            cnt.LastName = 'test SOQL';
            if(i < 100){
                cnt.AccountId = a.Id;
            } else if (i < 200){
                cnt.AccountId = a1.id;
            } else {
                cnt.accountid = a2.id;
            }
            listContact.add(cnt);
        }
        insert listContact;

        List<Opportunity> listOpp = new List<Opportunity>();
        for (Integer i = 0; i < 300; i++) {
            Opportunity opp = new Opportunity();
            opp.Name = 'Test opp ' + i;
            opp.StageName = 'Closed Won';
            opp.CloseDate = date.today();
            if(i<100){
                opp.AccountId = a.Id;
            }else if(1<200){
                opp.AccountId = a1.Id;
            }else{
                opp.AccountId = a2.Id;
            }
            listOpp.add(opp);
        }
        insert listOpp;
    }
    @isTest
    private static void testChildToParent() {
        test.startTest();
        SoqlDemo2.childToParent_Soql1();
        test.stopTest();
    }
    @isTest
    private static void testParentToChild() {
        
        test.startTest();
        SoqlDemo2.parentToPChild_Soql1();
        test.stopTest();   
        }

}


