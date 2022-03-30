@isTest
public with sharing class AccountQueueableExampleTest {
    @TestSetup
    static void makeData(){
        list<account> accounts = new list<account>();
        for (Integer i = 0; i < 100; i++) {
            accounts.add(new account(name = 'Test Account'+i));
        }
        insert accounts;
    }
    @isTest
    private static void testQueueable() {
        List<account> accs = [select id, name from account];
        AccountQueueableExample accQObj = new AccountQueueableExample(accs);
        //start test 
        Test.StartTest();
        System.enqueueJob(accQObj);
        Test.stoptest();

        integer count = [select count() from account where name like '%SI'];
        system.assert((count == 100));
        system.assertEquals(100,count);
    }
}
