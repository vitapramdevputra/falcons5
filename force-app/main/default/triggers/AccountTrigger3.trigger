trigger AccountTrigger3 on Account (before insert, after insert, before update, after update) { 
    
    /*
    if (trigger.isAfter && trigger.isUpdate) {
        for (Id eachAccId : trigger.newMap.keyset()) {
            Map<id, account> accOldMap = trigger.OldMap;
            Account oldAccount = accOldMap.get(eachAccId);
            string oldWebsite = oldAccount.Website;

            Map<id, account> accNewMap = trigger.NewMap;
            Account newAccount = accNewMap.get(eachAccId);
            string newWebsite = newAccount.Website;


            if(oldWebsite != newWebsite){
                system.debug('For Account ' + newAccount.Name + ', new Website is ' + newWebsite);
            }
        }
    }*/



















    /*
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('account update trigger of account object');
        Map<id, account> accNewMap = trigger.newMap;
        Map<id, account> accOldMap = trigger.oldMap;

        Set<id> accountIds = trigger.newMap.keySet();
        for (ID eachId : trigger.newMap.keySet()) {
            system.debug('acc id ' + eachId);

            Account newAcc = accNewMap.get(eachId);
            //datatype variableName = map.get(key);

            string newName = newAcc.Name;
            system.debug('new acc name = ' + accNewMap.get(eachId).Name);

            Account oldAcc = accOldMap.get(eachId);
            system.debug('old acc name = ' + accOldMap.get(eachId).Name);
        }
    }*/




















    
    /*Map<id, account> trgNewMap = trigger.NewMap;
    Map<id, account> trgOldMap = trigger.OldMap;

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('=====BEFORE INSERT=====');
        system.debug('before insert OLD MAP -> ' + trgOldMap);
        system.debug('before insert NEW MAP -> ' + trgNewMap);
    }
    if (trigger.isAfter && trigger.isInsert) {
        system.debug('=====AFTER INSERT=====');
        system.debug('after insert OLD MAP -> ' + trgOldMap);
        system.debug('after insert NEW MAP -> ' + trgNewMap);
    }

    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('=====BEFORE Update=====');
        system.debug('before Update OLD MAP -> ' + trgOldMap);
        system.debug('before Update NEW MAP -> ' + trgNewMap);
    }
    if (trigger.isAfter && trigger.isUpdate) {
        system.debug('=====AFTER Update=====');
        system.debug('after Update OLD MAP -> ' + trgOldMap);
        system.debug('after Update NEW MAP -> ' + trgNewMap);
    }
    /*if (trigger.isAfter) {
        if (trigger.isUpdate) {
            for (account oldAcc : trigger.old) {
                system.debug('old acc id = ' + oldAcc.id + ', old accname = ' + oldAcc.Name);

            }
            for (account newAcc : trigger.new) {
                system.debug('new acc id = ' + newacc.id + ', new accname = ' + newAcc.Name);
            }
        }
    }*/
}