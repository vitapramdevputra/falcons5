public class DmlDemo {
    public static void dmlInsertDemo_stndObj() {
        Account acc = new Account();
        acc.Name = 'SoftInnovas';
        //final step...CLICK SAVE
        insert acc;
        system.debug(acc);
    }

    public static void dmlUpdateDemo_1() {
        Account acc = new account();
        acc.Name = 'Softinnovas';
        system.debug('pending insert: ' + acc);
        insert acc;
        system.debug('insert: ' + acc);

        acc.Name = 'Salesforce Inc.';
        update acc;
        system.debug('update: ' + acc);
    }

    public static void dmlUpdateDemo_3() {
        account acc = [select name from account 
                        where name='SoftInnovas' limit 1];
        system.debug('fetch acc ' + acc);

        acc.Name = 'SoftInnovas Inc';

        update acc;
        system.debug('updated acc: ' + acc);
    }
    @TestVisible
    private static void dmlUpdateDemo_2() {
        Account acc = [select id, name from account 
         limit 1];

        Contact cnt = new contact();
        cnt.lastName = 'Biden';
        cnt.accountId = acc.id;
        insert cnt;
    }

    public static void dmlMultipleInsert_wrong() {
        Account acc1 = new Account();
        acc1.Name = 'SoftInnovas1';
        //final step...CLICK SAVE
        insert acc1;
        system.debug(acc1);

        Account acc = new Account();
        acc.Name = 'SoftInnovas2';
        //final step...CLICK SAVE
        insert acc;
        system.debug(acc);
    }

    public static void dmlMultipleRecordInsert_right() {
        List<account> listAcc = new list<account>();

        account acc1 = new account();
        acc1.name = 'acc 1';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.name = 'acc 2';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.name = 'acc 3';
        listAcc.add(acc3);

        insert listAcc;
    }
}
