public with sharing class OpportunityTriggerHandler {
    public static void updateOpportunityPoints(List<Opportunity> oppTriggerNew, Map<Id, Opportunity> oppTriggerOldMap) {
        
        map<string, OppStageNamePoints__c> oppPointsCS = OppStageNamePoints__c.getAll();
        //key  is stageName
        //value is custom setting record.
        for (Opportunity opp : oppTriggerNew) {
            boolean updatePoints  = false;
            //if oldMap is null then insert.
            if(oppTriggerOldMap == null){
                updatePoints = true;
            } else {
                if(oppTriggerOldMap.get(opp.Id).StageName != opp.StageName){
                    updatePoints = true;
                }
            }
            if(updatePoints){
                OppStageNamePoints__c cp = oppPointsCS.get(opp.StageName);
                opp.points__c  = cp.points__c; //this should come from custom setting.
                //opp.points__c = OppStageNamePoints__c.getInstance(opp.StageName).Points__c;
            }
        }
    }
}
