public class SoqlDemo2 {
    public static void childToParent_soql1() {
        list<contact> listCnt = [select id, name, account.name,account.industry 
                                from contact where account.industry = 'Energy'];
        for (contact eachContact : listCnt) {
            string accName = eachContact.account.name;
            system.debug('contact name is ' + eachContact.name + ', its acc is ' + accName);
        } 
    }

    public static void sampleSoql4() {
        List<account> accWithOppList = new list<account>();
        accWithOppList = [select Name, annualRevenue, 
                        (select Name, amount from opportunities where stageName = 'Closed Won') 
                        from account];
        for (account acc : accWithOppList) {
            system.debug('Account name ' + acc.Name + ' and its annual rev ' + acc.annualRevenue);
            list<opportunity> listOpp = acc.opportunities;
            for (opportunity opp : listOpp) {
                system.debug('opportunity name ' + opp.name);
                system.debug('opportunity amount ' + opp.amount);
            }
        }
    }
}
