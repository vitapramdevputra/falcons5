public with sharing class OpportunityTasCreationSchedule implements Schedulable {
    public void execute(SchedulableContext sc){
        OpportunityTaskCreationBatch ob = new OpportunityTaskCreationBatch();
        database.executeBatch(ob, 20);
    }
}
