@isTest
public class AccountQueueableExampleTest {
    @isTest
    public static void testQueueable() {
        List<Account> listAcc = new List<Account>();
        for (Integer i = 0; i < 200; i++) {
            Account a3 = new Account();
            a3.Name = 'UI Test';
            a3.Industry = 'Energy';
            a3.Type = 'Customer - Direct';
            listAcc.add(a3);
        }
        insert listAcc;
        AccountQueueableExample aq = new AccountQueueableExample(listAcc);
        test.startTest();
        system.enqueueJob(aq);
        test.stopTest();

        List<Account> accs = [Select Name FROM Account WHERE Name LIKE '%SI%'];
        system.assertEquals(200, accs.size());
    }
}