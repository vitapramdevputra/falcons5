@isTest
public class AccountTriggerHandlerTest {
    @isTest
    private static void test1() {
        list<account> listAcc = new list<account>();
        account acc1 = new account();
        acc1.name = 'acc1';
        acc1.active__c = 'No';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.name = 'acc2';
        acc2.active__c = 'Yes';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.name = 'acc3';
        acc3.active__c = 'No';
        listAcc.add(acc3);
        insert listAcc;

        for (Account acc : ListAcc) {
            acc.active__c = 'Yes';
            acc.description = 'test';
        }
        update listAcc; 
    }

    @isTest
    private static void test2() {
        list<account> listAcc = new list<account>();
        account acc1 = new account();
        acc1.name = 'acc1';
        acc1.active__c = 'No';
        listAcc.add(acc1);

        account acc2 = new account();
        acc2.name = 'acc2';
        acc2.active__c = 'Yes';
        listAcc.add(acc2);

        account acc3 = new account();
        acc3.name = 'acc3';
        acc3.active__c = 'No';
        listAcc.add(acc3);
        insert listAcc;

        list<contact> listContact = new list<contact>();
        for (Integer i = 0; i < 30; i++) {
            contact c = new contact();
            c.lastName = 'test soql ' + i;
            if (i < 10) {
                c.accountid = acc1.id;
            } else if(i < 20){
                c.accountid = acc2.id;
            } else if(i < 30){
                c.accountid = acc3.id;
            }
            listContact.add(c);
        }
        insert listContact;


        for (Account acc : ListAcc) {
            acc.vip__c = true;
            acc.description = 'test';
        }
        update listAcc; 
    }
}
