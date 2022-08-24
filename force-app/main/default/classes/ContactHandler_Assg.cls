public class ContactHandler_Assg {
    public static void createContact(List<Account> AccTriggerNew, 
                                    List<Account> accTriggerOld, 
                                    Map<Id, Account> accTriggerNewMap, 
                                    Map<Id, Account> accTriggerOldMap) {
        
        List<Contact> newCntcts = new List<Contact>();
        for (Account eachAcc : AccTriggerNew) {
            Contact newCntct = new Contact();
            newCntct.LastName = eachAcc.Name;
            newCntct.AccountId = eachAcc.id;
            newCntcts.add(newCntct);
        }
        if(!newCntcts.isEmpty())
        insert newCntcts;
    }    
}