public with sharing class UpdateAccountTotalCaseCount {
    @invocableMethod
    public static void updateTotalCaseCount(List<Id> ListOfAccountId) {
        List<AggregateResult> caseAGR = [Select COUNT(Id) casesCount, AccountId FROM Case WHERE AccountId IN :ListOfAccountId Group By AccountId];

        List<Account> updateAccs = new List<Account>();
        for (AggregateResult agr : caseAGR) {
            integer couuntOfCases = Integer.valueOf(agr.get('casesCount'));
            Account acc = new Account();
            acc.tot

            
        }
        
    }
