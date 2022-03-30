public with sharing class AccountsBatch implements Database.batchable<Sobject> {
    public integer count = 0;
    public Database.QueryLocator start(Database.BatchableContext bc){
        Database.QueryLocator q1 = database.getQueryLocator([select id, description from account]);
        return q1;
    }
    public void execute(Database.BatchableContext bc, List<account> scope){
        updateAccounts(scope);
        count++;
    }

    public void finish(Database.BatchableContext bc){
        system.debug('done with updating all the accounts');
    }

    public void updateAccounts(list<account> scope){
        List<account> updateAccounts = new list<account>();
        for (account acc : scope) {
            acc.description += '... updated via Batch apex';
            updateAccounts.add(acc);
        }
        if(!updateAccounts.isEmpty())
            update updateAccounts;
    }
}
