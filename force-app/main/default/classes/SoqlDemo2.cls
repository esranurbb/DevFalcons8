public with sharing class SoqlDemo2 {
    public static void childToParent_Soql1() {
        List<Contact> listCoontct = [SELECT id, name, Account.name, Account.industry, Account.Phone from Contact WHERE Account.industry = 'Energy'];
        for(Contact eachContact : listCoontct){
            string AccName = eachContact.Account.Name;
            system.debug('Contact\'s Name is ' + eachContact.Name + ', its account is ' + AccName);
        }
    }

    public static void parentToPChild_Soql1() {
        List<Account> accounts = new list<Account>();
        accounts = [select Name, AnnualRevenue, (select Name, Amount from Opportunities Where StageName = 'Closed Won') from Account Where Type = 'Customer - Direct' ];
        for(Account eachAccount : accounts){
            system.debug(eachAccount.Name + ' ' + eachAccount);
            List<Opportunity> listOpp = eachAccount.Opportunities;
            for(Opportunity opp : listOpp){
                system.debug('Opp name is ' + opp.Name + opp.Amount);
                system.debug('-----------New Account-----------');
            }
        }
    }


}
