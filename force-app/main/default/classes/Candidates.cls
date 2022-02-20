public class Candidates {
    public string Name;
    public string Gender;
    public static string CompanyName;

    public void printCandidateInfo(){
        system.debug('Candidate Name is ' + Name + '(' + Gender + '), company name is ' + CompanyName);
        //system.debug('Company name is ' + CompanyName);
    }
    public static void printCandidateInfo2() {
        system.debug('Company name ' + CompanyName);
    }
}
