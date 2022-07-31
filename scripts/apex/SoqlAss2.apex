SoqlAss2.avgMethod();
SoqlAss2.avgMethodIndsutry();
SoqlAss2.avgMethodIndsutryMax();
SoqlAss2.DMLAccount();
SoqlAss2.SalesforceProject();

List<Contact> lstContact = [SELECT FirstName, LastName, Account.id, Account.Name from Contact];
    for (Contact eachCntct : lstContact) {
        system.debug(eachCntct);
    }
    system.debug(lstContact);


List<Account> lstAcc = [SELECT Name, (SELECT Id, Name from Contacts) from Account];
    for (Account eachAcc : lstAcc){
        system.debug('Account Name ' + eachAcc);
        for(Contact eachCntct : eachAcc.Contacts){
            system.debug('Contact Name ' + eachCntct);
        }
        
    }


