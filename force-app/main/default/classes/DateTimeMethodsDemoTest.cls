@isTest
public class DateTimeMethodsDemoTest {
    @isTest
    private static void test1() {
        //call the method which we want to test.
        DateTimeMethodsDemo d1 = new DateTimeMethodsDemo();
        d1.calculateAgeInMonths();
        //soql here --> i cannot access any record.
        // i am calling a method which is doing soql
            //--> no records in that soql too.
    }
    @isTest
    private static void test2() {
        //call the method which we want to test.
        DateTimeMethodsDemo d1 = new DateTimeMethodsDemo();
        d1.calculateAgeInDays();
    }
    @isTest
    private static void test3() {
        //call the method which we want to test.
        DateTimeMethodsDemo d1 = new DateTimeMethodsDemo();
        d1.printSubscriptionEndDate();
    }
    @isTest
    private static void test4() {
        //call the method which we want to test.
        DateTimeMethodsDemo d1 = new DateTimeMethodsDemo();
        d1.printOfferEndDateTime();
    }
    
    @isTest
    private static void test5() {
        //call the method which we want to test.
        DateTimeMethodsDemo d1 = new DateTimeMethodsDemo();
        date dt = date.today();
        boolean lp0 = d1.leapYearCheck(dt);
        system.assertEquals(false, lp0);
        
        date dt1 = date.newInstance(2020, 10, 10);
        boolean lp2 = d1.leapYearCheck(dt1);
        system.assertEquals(true, lp2);
    }

}