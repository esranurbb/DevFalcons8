public class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<Contact> conTriggerNew, 
                                                List<Contact> conTriggerOld, 
                                                Map<Id, Contact> conTriggerNewMap, 
                                                Map<Id,Contact> conTriggerOldMap) {
        for(Contact eachContact : conTriggerNew) {
            Contact oldContact = conTriggerOldMap.get(eachContact.id);
            if(oldContact.LeadSource == 'Partner Referral'){
                eachContact.addError('Cannot update \'Partnel Referral\' Contacts');
            }
        }                                           
        
    }
    
    public static void contactUpdateValidation2(List<Contact> conTriggerNew, 
                                                List<Contact> conTriggerOld, 
                                                Map<Id, Contact> conTriggerNewMap, 
                                                Map<Id,Contact> conTriggerOldMap) {
        for(Contact eachContact : conTriggerNew) {
            if(eachContact.LeadSource!=conTriggerNewMap.get(eachContact.id).leadSource){
                eachContact.LeadSource.addError('Cannot update \'Partnel Referral\' Contacts');
            }
        }                                           
    }

    public static void countOfAccContacts(set<id> accIds) {
        List<Account> listAccs = [Select Id, Number_of_Contacts__c, (Select Id FROM Contacts) FROM Account WHERE Id In :accIds];
        for (Account eachAcc : listAccs) {
            List<Contact> accContacts = eachAcc.Contacts;
            integer numOfCon = accContacts.size();
            eachAcc.Number_of_Contacts__c = numOfCon;
        }
        update listAccs;
    }
}
