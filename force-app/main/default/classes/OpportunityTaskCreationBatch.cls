public with sharing class OpportunityTaskCreationBatch implements Database.Batchable<sobject>{
    public Database.QueryLocator start(Database.BatchableContext bc){
        database.QueryLocator q = database.getQueryLocator([select Id, OwnerId, CloseDate from Opportunity Where LastModifiedDate < LAST_N_DAYS:7 and (StageName != 'Closed Lost' or StageName != 'Closed Won')]);
        return q;
    }
    public void execute(Database.BatchableContext bc, List<Opportunity> scope){
        //create task
        List<Task> tasksList = new list<Task>();
        for(Opportunity opp : scope){
            Task tk = new Task();
            tk.Subject = System.Label.TaskSubject;//This needs to be created in Org first
            tk.Description = System.Label.TaskDescription;//This needs to be created in Org first
            tk.WhatId = opp.Id;
            tk.OwnerId = opp.OwnerId;
            tk.Status = 'In Progress';
            if(opp.CloseDate < Date.today()){
                tk.ActivityDate = Date.today();
            } else {
                tk.ActivityDate = opp.CloseDate.addDays(-2);
            }
            tasksList.add(tk);
        }
        if(!tasksList.isEmpty()){
            Insert tasksList;
        }
    }
    public void finish(Database.BatchableContext bc){

    }
}
