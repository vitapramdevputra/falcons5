@isTest
public class CalculatorTest {
    @isTest
    private static void testMessages() {
        Calculator.welcomeMessage();
        Calculator.printNewMessage('this is a test method');
    }
    @isTest
    private static void addTest1() {
        integer calcAdd = calculator.add(10,15);
        system.assertEquals(25,calcAdd);
    }
    @isTest
    private static void addTest2() {
        integer calcAdd = calculator.add(10,15,20);
        system.assertEquals(45,calcAdd);
    }
}
