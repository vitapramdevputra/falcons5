AccountsBatch ab = new AccountsBatch();
//executing batch, 
Id batchId2 = Database.executeBatch(ab, 10);


OpportunityTaskCreationBatch ob = new OpportunityTaskCreationBatch();
database.executeBatch(ob, 20);