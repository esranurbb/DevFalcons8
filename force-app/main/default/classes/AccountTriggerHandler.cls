public class AccountTriggerHandler {
    public static void updateAccountDescription(List<Account> accTriggerNew,
        List<Account> accTriggerOld,
        Map<Id, Account> accTriggerNewMap,
        Map<Id, Account> accTriggerOldMap) {
            for(Account eachAcc : accTriggerNew){
                boolean updateDesc = false;
                if(accTriggerOldMap==Null && eachAcc.Active__c == 'Yes'){
                    updateDesc = true;
                    // eachAcc.Description = 'This description was updated.';
                }if(accTriggerOldMap!=Null){
                    if(eachAcc.Active__c=='Yes' && accTriggerOldMap.get(eachAcc.Id).Active__c != accTriggerNewMap.get(eachAcc.Id).Active__c){
                        updateDesc = true;
                        // eachAcc.Description = 'Account is active, go to party.';
                    }
                }
                if(updateDesc)
                eachAcc.Description = 'Account is active, go to party.';
            }
    }

    public static void updateContactsVIP(List<Account> AccTriggerNew, 
                                        List<Account> accTriggerOld, 
                                        Map<Id, Account> accTriggerNewMap, 
                                        Map<Id, Account> accTriggerOldMap) {

        Set<Id> accIDSet = new Set<Id>();
        for(Account eachAcc : AccTriggerNew){
            if(eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.id).VIP__c){
                accIDSet.add(eachAcc.id);
            }                       
        }
        List<Contact> listContacts = [Select account.id, VIP__c from Contact WHERE Account.Id In :accIDSet];

        for (Contact eachCon : listContacts) {
            eachCon.VIP__c = accTriggerNewMap.get(eachCon.Account.id).VIP__c;
        }
        update listContacts;
    }


    // public static void createNewAcc( List<Account> AccTriggerNew, 
    //                                 List<Account> accTriggerOld, 
    //                                 Map<Id, Account> accTriggerNewMap, 
    //                                 Map<Id, Account> accTriggerOldMap) {
        
    //     List<Account> accList = [Select id, name From Account];
    //     if(accList.size() != 0){
    //         for (Account acc : accList){
    //             acc.name +='Updated';
    //         }
    //     update accList;    
    //     }
    //     else{
    //         Account acc = new Account();
    //         insert acc;
    //     }                           
    // }
}
