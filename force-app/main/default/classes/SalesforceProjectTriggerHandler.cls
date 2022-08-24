public class SalesforceProjectTriggerHandler {
    public static void validateProjectComppletion(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld, Map<Id,Salesforce_Project__c> spTriggerNewMap, Map<Id,Salesforce_Project__c> spTriggerOldMap) {
        
        Set<Id> spComletedProjectIds = new Set<Id>();
        for (Salesforce_Project__c eachSP : spTriggerNew) {
            if(spTriggerOldMap.get(eachSP.id).Status__c != spTriggerNewMap.get(eachSP.id).Status__c && eachSP.Status__c == 'Completed'){
                spComletedProjectIds.add(eachSP.Id);
            }
        }

        List<Salesforce_Ticket__c> listOfTicketsCompleted = [Select Status__c, Salesforce_Project__c from Salesforce_Ticket__c WHERE Salesforce_Project__c in :spComletedProjectIds and (Status__c != 'Completed' and Status__c != 'Cancelled')];
        for (Salesforce_Ticket__c eachTicket : listOfTicketsCompleted) {
            if(spComletedProjectIds.contains(eachTicket.Salesforce_Project__c)){
                spTriggerNewMap.get(eachTicket.Salesforce_Project__c).Status__c.addError('Cannot complete the Prjoect baby.');
            }
        }
    }

    public static void createDefaultSalesforceTicket(List<salesforce_project__c> spTriggerNew) {
        //create one empty list of ticket
        List<Salesforce_Ticket__c> newSTList = new List<Salesforce_Ticket__c>();
        for (salesforce_project__c eachSP : spTriggerNew) {
            Salesforce_Ticket__c st = new Salesforce_Ticket__c();
            st.Subject__c = 'Default ST';
            st.Salesforce_Project__c = eachSP.id;
            newSTList.add(st);
        }
        if(!newSTList.isEmpty()){
            insert newSTList;
        }
    }

    @future
    public static void updateProjectDescription(set<ID> setSpIds) {
        List<Salesforce_Project__c> listOfSP = [Select id, Description__c FROM Salesforce_Project__c WHERE Id in :setSpIds];
        for (Salesforce_Project__c eachSPRecord : listOfSP) {
            eachSPRecord.Description__c += ' Update from future.';
        }
        update listOfSP;
        
    }

    public static void spCompletedStatus(List<Salesforce_Project__c> spTriggerNew, List<Salesforce_Project__c> spTriggerOld, Map<Id,Salesforce_Project__c> spTriggerNewMap, Map<Id,Salesforce_Project__c> spTriggerOldMap) {
        Set<Id> spIds = new Set<Id>();
        for (Salesforce_Project__c spRec : spTriggerNew) {
            if(spRec.Status__c == 'Completed' && spTriggerOldMap.get(spRec.Id).Status__c != 'Completed')
            spIds.add(spRec.Id);
        }
        if(!spIds.isEmpty())
        updateTicketStatusCompleted(spIds);
    }
    @future
    public static void updateTicketStatusCompleted(set<Id> spIds) {
        List<Salesforce_Ticket__c> listST = [Select id, Status__c, Salesforce_Project__c from Salesforce_Ticket__c WHERE Salesforce_Project__c in :spIds and Status__c != 'Completed'];
        for (Salesforce_Ticket__c st : listST) {
            st.Status__c = 'Completed';
        }
        update listST;
    }
}
