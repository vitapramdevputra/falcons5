public with sharing class AccountTriggerHandler {
    public static void updateAccountDescription(List<account> accTriggerNew,
                                        List<account> accTriggerOld,
                                        map<id, account> accTriggerNewMap,
                                        map<id, account> accTriggerOldMap) {
        for (account eachAcc : accTriggerNew) {
            //boolean flag to check if we want to update description
            //so false
            Boolean updateDesc = false;
            if (accTriggerOldMap == null && eachAcc.Active__c == 'Yes') {
                system.debug('before and active is yes');
                //true, we want to update it when Active is yes.
                updateDesc = true;
            }
            //if oldMap not null, then old value exists, so it is update
            if(accTriggerOldMap != null){
                Account oldAcc = accTriggerOldMap.get(eachAcc.id);

                if (eachAcc.active__c == 'Yes'
                && oldAcc.active__c != eachAcc.active__c) {
                    system.debug('before update and active is changed to yes');
                    updateDesc = true;
                }
            }
            if(updateDesc){
                eachAcc.description = 'Account is now active. Enjoy!';
            }
        }
    }

    public static void updateVIPForAllContacts(List<account> accTriggerNew,
                    List<account> accTriggerOld,
                    map<id, account> accTriggerNewMap,
                    map<id, account> accTriggerOldMap) {
        set<id> setAccIds = new set<id>();
        for (account eachAcc : accTriggerNew) {
            //new acc vip != old acc vip --> to check if VIP is updated
            if (eachAcc.VIP__c != accTriggerOldMap.get(eachAcc.id).VIP__c) {
                setAccIds.add(eachAcc.id);
            }
        }

        list<contact> listContacts = [select id, name, account.id, vip__c from contact where account.id in :setAccIds];

        for (contact eachContact : listContacts) {
            Account newAcc = accTriggerNewMap.get(eachContact.account.id);
            boolean accVIP = newAcc.vip__c;
            //update account's VIP to contact
            eachContact.vip__c = accVIP;
        }
        if (!listContacts.isEmpty()) {
            update listContacts;
        }
    }
}
