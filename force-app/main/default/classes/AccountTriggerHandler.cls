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
        boolean VIP;
        List<Account> listAcc = new List<Account>();
        if(listAcc.VIP==true){
            for(Account eachAcc : AccTriggerNew)
            Contact updtCntct = new Contact();
            updtCntct.VIP = true;
        }
        

    }

        
}
    
