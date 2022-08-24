@isTest
public class SPTriggerHandlerTest {
    @isTest
    private static void testMethod1() {
        List<Salesforce_Project__c> listSP = new List<Salesforce_Project__c>();
        for (Integer i = 0; i < 200; i++) {
            Salesforce_Project__c sp = new Salesforce_Project__c();
            sp.Project_Name__c = 'Future Method Test ' + i ;
            sp.Description__c = 'What a good topic.';    
            listSP.add(sp);
        }
        test.startTest();
        insert listSP;
        test.stopTest();

        List<Salesforce_Project__c> listSP2 = [Select Id, Description__c FROM Salesforce_Project__c];
        system.assert(ListSP2[0].Description__c.containsIgnoreCase('future'));
    }
}
