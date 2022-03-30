@isTest
public class DmlDemoTest {
    @isTest
    private static void dmlDemoTest1() {
        DmlDemo.dmlInsertDemo_stndObj();

        list<account> listAcc = [select id, name from account];
        system.assertEquals(1, listAcc.size());
        system.assertEquals('SoftInnovas', listAcc[0].Name);
    }
    @isTest
    private static void dmlDemoTest2() {
        //create records.
        //1. prepare data.
        //because we cannot access anything from the org.
        Account acc = new Account();
        acc.Name = 'SoftInnovas INC';
        insert acc;

        //2. call methods.
        DmlDemo.dmlUpdateDemo_2();

        //3. assertion.
        list<contact> listContact = [select id, lastname from contact];
        system.assertEquals(1, listContact.size());
        system.assertEquals('Biden', listContact[0].LastName);
    }

    @isTest
    private static void dmlDemoTest3() {
        DmlDemo.dmlMultipleRecordInsert_right();
        list<account> acc = [select id, name from Account];
        system.assertEquals(3, acc.size());
    }
}
