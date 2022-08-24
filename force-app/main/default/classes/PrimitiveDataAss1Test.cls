@isTest
public with sharing class PrimitiveDataAss1Test {
    private static void stringCheck() {
        PrimitiveDataAssignment1 pda = new PrimitiveDataAssignment1();
        system.assertEquals('0016g000024a5DiAAI--The following Id belongs to Accouts--' + false, pda.prim_method());
        
    }
}
