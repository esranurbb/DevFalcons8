@isTest
public with sharing class CalculatorTest {
    @isTest
    public static void testMessages() {
        string returnMsg = Calculator.printAndReturnMessage('Test Method running');
        system.assertEquals('Test Method running...Ok Cool', returnMsg);
    }

    @isTest
    public static void testMethodAdd1() {
        integer returnMsg = Calculator.add2(3, 5, 7);
        system.assertEquals(15, returnMsg);
        
    }
}
