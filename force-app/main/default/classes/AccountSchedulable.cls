public class AccountSchedulable implements Schedulable {
    public void execute(SchedulableContext sc){
        //this is apex code.
        //you can call anything here.
        //any static method, any non-static method.
        
        //start a batch execution
        //AccountsBatch acb = new AccountsBatch();
        Database.executeBatch(new AccountsBatch());
    }
}
