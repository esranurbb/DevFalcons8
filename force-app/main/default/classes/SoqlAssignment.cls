public class SoqlAssignment {
    public static void soql_WhereClause(){
        List<Contact> lstContact = [Select LastName from Contact WHERE LastName LIKE '%A%'];
        system.debug(lstContact);
        system.debug('size is ' + lstContact.size());
        system.debug(List<Contact> lstContact = [Select count(LastName) from Contact]);

    }

    public static void soql_forMehod(){
        List<Contact> lstContact = [Select LastName, Phone from Contact];
        for(contact eachContact : lstContact){
            string cntctLastName = eachContact.LastName;
            string cntctPhone = eachContact.Phone;
            system.debug('The contact\'s last name is: ' + cntctLastName + ' & him/her phone number: ' + cntctPhone);
        }
    
    }
}
