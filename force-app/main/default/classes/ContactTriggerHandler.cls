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
            Contact oldContact = conTriggerOldMap.get(eachContact.id);
            if(oldContact.LeadSource!=conTriggerNewMap.get(eachContact.id).leadSource){
                eachContact.LeadSource.addError('Cannot update \'Partnel Referral\' Contacts');
            }
        }                                           
        
    }
}
