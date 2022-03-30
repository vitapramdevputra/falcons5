trigger OpportunityTrigger on Opportunity (before insert, before update) {
    if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate)){
        //call some method.
        OpportunityTriggerHandler.updateOpportunityPoints(Trigger.new, trigger.oldMap);
    }
}