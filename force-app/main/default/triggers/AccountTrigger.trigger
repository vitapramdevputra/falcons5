trigger AccountTrigger on Account (before insert, after insert, before update, after update) {
    /*
    system.debug('trigger called');

    if (trigger.isBefore && trigger.isInsert) {
        system.debug('trigger.old before Insert = ' + trigger.old);
    }
    if(trigger.isAfter && trigger.isInsert){
        system.debug('trigger.old after Insert = ' + trigger.old);
    }
    if (trigger.isBefore && trigger.isUpdate) {
        system.debug('trigger.old before Update = ' + trigger.old);
        system.debug('trigger.new before update = ' + trigger.new);
    }
    if(trigger.isAfter && trigger.isUpdate){
        system.debug('trigger.old after Update = ' + trigger.old);
        system.debug('trigger.new after update = ' + trigger.new);
    }

    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('trigger before insert .new -> ' +Trigger.new);
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('trigger after insert .new -> ' +Trigger.new);
    }
    list<account> newAccounts = trigger.new;
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('trigger before update .new -> ' +Trigger.new);
        for (account eachAcc : newAccounts) {
            system.debug('before update lastModifiedDate -> ' + eachAcc.lastModifiedDate);
        }
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('trigger after update .new -> ' +Trigger.new);
        for (account eachAcc : newAccounts) {
            system.debug('after update lastModifiedDate -> ' + eachAcc.lastModifiedDate);
        }
    }
    */
    /*
    if (trigger.isAfter && trigger.isInsert) {
        //newly inserted or updated record.(the one which called this trigger)
        List<account> newAccounts = trigger.new;
        system.debug('size of newAccounts ' + newAccounts.size());
        for (account eachAcc : newAccounts) {
            system.debug('account id = ' + eachAcc.id + ', account name: ' + eachAcc.name);
        }

    } */

    /*
    if (Trigger.isBefore && Trigger.isInsert) {
        system.debug('before insert trigger called. Yeah!!');
    }
    if (Trigger.isAfter && Trigger.isInsert) {
        system.debug('after insert trigger called here. Oh yeaah!!');
    }
    if (Trigger.isBefore && Trigger.isUpdate) {
        system.debug('before update trigger called. ');
    }
    if (Trigger.isAfter && Trigger.isUpdate) {
        system.debug('after update trigger called.');
    }*/
}