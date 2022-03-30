@isTest
public class SoqlDemoTest {
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

        //2. call the actual method.
        //want to test accountSoql_1 of SoqlDemo class.
        SoqlDemo.accountSoql_1();

        //3. assertion (method is returning something, or doing some action (dmls, validations etc))
    }
    @isTest
    private static void test2() {
        //1. prepare the DATA.
            //do dmls here
        list<account> listAcc = new list<account>();
        account acc1 = new account();
        acc1.name = 'acc1';
        acc1.phone = '56432164';
        acc1.accountNumber = 'actest98897';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.name = 'acc2';
        acc2.phone = '56432164';
        acc2.accountNumber = 'actest98897';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.name = 'acc3';
        acc3.phone = '56432164';
        acc3.accountNumber = 'actest98897';
        listAcc.add(acc3);
        insert listAcc;

        //2. call the actual method.
        //want to test accountSoql_1 of SoqlDemo class.
        SoqlDemo.accountSoql_2();
        SoqlDemo.accountSoql_3();
        //3. assertion (method is returning something, or doing some action (dmls, validations etc))
    }
}
