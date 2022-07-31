public class SoqlAss2 {
    public static void avgMethod() {
        AggregateResult[] avgEmply = [Select AVG(NumberOfEmployees) from Account];
        system.debug(avgEmply);
    }

    public static void avgMethodIndsutry() {
        AggregateResult[] avgEmplyIndustry= [Select Industry, AVG(NumberOfEmployees) from Account GROUP BY Industry];
        for (AggregateResult eachAcc : avgEmplyIndustry) {
            system.debug('Avarage Employee per industry '+ eachAcc);
            system.debug('---------- Other Industry ----------');        
        }
    }

    public static void avgMethodIndsutryMax() {
        List<Account> maxEmply = [Select Industry, NumberOfEmployees from Account];
        for (Account industries : maxEmply) {
            system.debug(industries);
        }
    }

    public static void DMLAccount() {
        Account newRec = new Account();
        newRec.Name =  'TestData';
        insert newRec;
    }

    public static void SalesforceProject() {
        Salesforce_Project__c newRec = new Salesforce_Project__c();
        newRec.Project_Name__c = 'Diffucult Assignment :/';
        newRec.Description__c = 'Do your best';
        insert newRec;
        system.debug(newRec);

    }

    

}