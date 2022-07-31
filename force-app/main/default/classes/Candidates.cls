public class Candidates {
    public string name;
    public string gender;
    public static string CompanyName;

    public void printCandidate(){
        system.debug('Candidate name is ' + name + '(' + gender + ')');
        system.debug('Company name is ' + CompanyName);
    }

    public static void printCandidateInfo(){
        system.debug('Company name is ' + CompanyName);
    }

}
