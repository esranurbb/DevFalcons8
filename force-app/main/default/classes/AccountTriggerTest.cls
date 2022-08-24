@isTest
public class AccountTriggerTest {
    @isTest
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

        for (Account acc : listAcc) {
            acc.Description = 'update';
        update listAcc;
    }
        
    }
}
