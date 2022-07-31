public class SoqlDemo {
    public static void accountSOQL_1(){
        List<Account> listAcc = [Select Id, name, active__c from Account WHERE Name LIKE '%A%'];
        system.debug(listAcc);
        system.debug(listAcc.size());

        Account acc = [Select id, name FROM Account ORDER BY CreatedDate DESC LIMIT 1];
        system.debug(acc);
    }

    public static void accountSOQL_2(){
        Account acc = [Select id, name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC LIMIT 1];
        String accName = acc.Name;
        String accPhone = acc.Phone;
        system.debug('Acc Name: ' + accName + ', phone is ' + accPhone);
        system.debug('Account number is ' + acc.AccountNumber);
    }

    public static void accountSOQL_3(){
    List<Account> listAcc = [Select id, name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC];
    system.debug(listAcc);
    for(Account eachAccount : listAcc){
        String accName = eachAccount.Name;
        String accPhone = eachAccount.Phone;
        system.debug('Acc name: ' + accName + ', phone is ' + accPhone);
        system.debug(eachAccount.AccountNumber);
    }
    }

    public static void accountSOQL_Filter(string accNameFilter){
        List<Account> listAcc = [select name, phone FROM Account WHERE Name = :accNameFilter];
        system.debug(listAcc);
    }
    
}
