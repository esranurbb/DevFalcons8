public class StringDemoClass {
    public void stringMethod1(){
        string sessionDescription = 'Learning Sring Method in Apex language';
        system.debug('Session Description = ' + sessionDescription);

        integer lenghtOfString = sessionDescription.length();
        system.debug('Lenght of string is = ' + lenghtOfString);

        string sessionDescriptionInCaps = sessionDescription.toUpperCase();
        system.debug('In Caps = ' + sessionDescriptionInCaps);

        boolean containsApex = sessionDescription.contains('Apex');
        boolean containsSalesforce = sessionDescription.contains('salesforce');
        system.debug('Contaiins apex =' + containsApex);
        system.debug('Contains salesforce =' + containsSalesforce);

        boolean apex = sessionDescription.containsIgnoreCase('apex');
        system.debug('Contains apex? '+ apex);
    }
}
