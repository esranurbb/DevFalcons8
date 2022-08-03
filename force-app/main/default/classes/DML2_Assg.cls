public with sharing class DML2_Assg {
    public static void insert_dml() {
        Account newAcc = new Account();
        newAcc.Name = 'Esranur' + ' Assignment';
        insert newAcc;
    }

    public static void updating_dml() {
        insert_dml();
        List<Account> accList = [Select Name From Account WHERE Name Like '%Assignment&'];
        accList.Name += ' updation';
        update accList;
    }
}  