trigger CaseTrigger on Case (before insert, before update) {
    system.debug('before insert case trigger');

    if (trigger.isUpdate) {
        integer count = 0;
        count++;
        system.debug('count = ' + count);
        CaseTriggerHandler.countTriggerExecution++;
        system.debug('actual count = ' + CaseTriggerHandler.countTriggerExecution);
    }
}