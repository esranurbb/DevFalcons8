public class DmlDemo {
    public static void dmlInsertDemo_StndObj() {
        Account acc = new Account();
        acc.Name = 'Little Cake';
        acc.Phone = '75489539583';
        insert acc;
    }

    public static void dmlInsertDemo_cstObj() {
        Salesforce_Project__c sp = new Salesforce_Project__c();
        sp.project_name__c = 'Learning DML';
        sp.description__c = 'We are all great';
        insert sp;        
    }

    public static void dmlUpdateDemo_3(){
        Account acc = [Select Id, Name from Account WHERE Name = 'Little Cake Design'];
        acc.Name = 'Little Cake Design';
        acc.Industry = 'Consulting';
        acc.Website = 'www.littlecake.com';
        acc.Rating = 'Hot';
        acc.AnnualRevenue = 434343434;
        acc.Type = 'Prospect';
        update acc;
    }

    public static void dmlDemo_2(){
        Account acc = [Select Id, Name FROM Account WHERE name = 'Little Cake Design'];
        Account acc2 = [Select Id, Name FROM Account WHERE name = 'TestData'];
        Contact newCntct = new Contact();
        newCntct.LastName = 'No Last Named Person';
        newCntct.AccountId = acc2.Id;
        insert newCntct;

    }

    public static void projectInsert(){
        Student s = new Student();
        Salesforce_Project__c sp = [Select Id, Name FROM Salesforce_Project__c ORDER BY CreatedDate DESC LIMIT 1];
        Salesforce_Ticket__c st = new Salesforce_Ticket__c();
        st.Subject__c = 'So Many Subjects All Together';
        st.Priority__c = 'High';
        st.Status__c = 'New';
        st.Requested_by_date__c = date.newInstance(2021, 08, 16);
        st.Salesforce_Project__c = sp.Id;
        insert st;
    }

    public static void dmlMultRec(){
        List<Account> listAcc = new List<Account>();

        Account acc1 = new Account();
        acc1.Name = 'Account 1';
        listAcc.add(acc1);

        Account acc2 = new Account();
        acc2.Name = 'Account 2';
        listAcc.add(acc2);

        Account acc3 = new Account();
        acc3.Name = 'Account 3';
        listAcc.add(acc3);

        insert listAcc;
    }

    public static void multRec2(){
        List<Account> listAcc = new List<Account>();
        // Account acc = new Account();
        // acc.Name = 'Too Many Accounts';
        // acc.AccountNumber = 'ACC-1';
        // acc.Active__c = 'Yes';
        // listAcc.add(acc);

        for(integer i=1; i<6; i++){
            Account acc = new Account();
            acc.name = 'Too Many Accounts V'+i;
            acc.AccountNumber = 'ACC-1'+i;
            acc.Active__c = 'Yes';
            listAcc.add(acc);
        }
        if(!listAcc.isEmpty()){
            insert listAcc;
        }

    }

    public static void dmlMultRecordUpdate() {
        List<Account> updatedAccounts = new List<Account>();
        List<Account> listAcc = [Select id, Name from Account];
        for (Account acc : listAcc) {
            acc.Name += ' via B.0';
            updatedAccounts.add(acc);
        }
        if(!updatedAccounts.isEmpty()){
            update updatedAccounts;
        }
    }

    
}