public with sharing class AccountUpdateHelper {
    @InvocableMethod
    public static void updateAccountWebsite(List<id> accIds) {
        list<account> accountsToUpdate = new list<account>();

        list<account> accounts = [select id, name, website from 
                                    account where id in :accIds];
        for (account eachAcc : accounts) {
            eachAcc.website = 'www.softinnovas.com';
            accountsToUpdate.add(eachAcc);
        }
        if (!accountsToUpdate.isEmpty()) {
            update accountsToUpdate;
        }
    }
}
