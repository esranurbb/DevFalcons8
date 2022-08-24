public with sharing class AccountUpdateHelper {
    @InvocableMethod
    public static void updateAccountWebsite(List<Id> accIds) {
        List<Account> listOfAccounts = [Select id, website from Account Where Id In :accIds];
        for (Account eachAcc : listOfAccounts) {
            eachAcc.Website = 'www.softinnovas.com';
        }
        update listOfAccounts;
    }
}
