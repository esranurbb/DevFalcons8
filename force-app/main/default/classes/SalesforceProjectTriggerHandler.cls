public  class SalesforceProjectTriggerHandler {
    public static void createSalesforceTicket(List<Salesforce_Project__c> sfpTriggerNew) {
    
    
    Salesforce_Project__c newSP = new Salesforce_Project__c();
    List<Salesforce_Ticket__c> newTickets = new List<Salesforce_Ticket__c>();
 
            for (Salesforce_Project__c eachPrjct : sfpTriggerNew) {
                Salesforce_Ticket__c sspTicket = new Salesforce_Ticket__c();
                sspTicket.Subject__c = 'Try this trigger';
                sspTicket.Salesforce_Project__c = eachPrjct.id;
                newTickets.add(sspTicket);
            }
            insert newTickets;
    }
}
