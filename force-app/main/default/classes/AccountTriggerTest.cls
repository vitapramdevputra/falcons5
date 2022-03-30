@isTest
public class AccountTriggerTest {
    @isTest
    private static void test1() {
         //1. prepare the DATA.
            //do dmls here
            list<account> listAcc = new list<account>();
            account acc1 = new account();
            acc1.name = 'acc1';
            listAcc.add(acc1);
    
            account acc2 = new account();
            acc2.name = 'acc2';
            listAcc.add(acc2);
    
            account acc3 = new account();
            acc3.name = 'acc3';
            listAcc.add(acc3);
            insert listAcc;

            for (Account acc : ListAcc) {
                acc.description = 'test';
            }
            update listAcc;

    }
}
