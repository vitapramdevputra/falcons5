trigger ContactTrigger on Contact (before insert, before update, after insert, after update) {
   if (trigger.isBefore && trigger.isUpdate) {
       //validate
       ContactTriggerHandler.contactUpdateValidation1(trigger.new, trigger.old, trigger.newMap, trigger.OldMap);
   }
}