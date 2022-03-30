trigger AccountTrigger4 on Account (before insert, after insert, before update, after update) {
    if (trigger.isBefore) { //when will this be true? before insert and before update?
        system.debug('before insert/update trigger on account object');
        AccountTriggerHandler.updateAccountDescription(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
    if (trigger.isAfter && trigger.isUpdate) { 
        //call updateVIPforAllContacts method.
        AccountTriggerHandler.updateVIPForAllContacts(Trigger.New, Trigger.Old, Trigger.NewMap, Trigger.OldMap);
    }
}