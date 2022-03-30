public class AccountQueueableExample implements Queueable {
    public list<account> accountList;
    public AccountQueueableExample(list<account> accList) {
        accountList = accList;
    }
    public void execute(QueueableContext context){
        system.debug('reached in execute method.');
        system.debug('accountList = ' + accountList);
        for (Account acc : accountList) {
            acc.Name += ' -- SI';
        }
        update accountList;
    }
}
