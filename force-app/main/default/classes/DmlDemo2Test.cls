@isTest
public class DmlDemo2Test {
    @isTest
    private static void dmlDemoTest3() {
        //1. prepare data
        salesforce_project__c sp = new salesforce_project__c();
        sp.Project_Name__c = 'Teach TESTS to Falcons';
        sp.Description__c = 'All 50% are great learners, still';
        sp.status__c = 'New';
        insert sp; 

        //2. call method
        DmlDemo2.dmlUpdateDemo_2_co();

        //3. assertion
        List<salesforce_ticket__c> st = [select id, subject__c, salesforce_project__c from salesforce_ticket__c where subject__c = 'learn apex'];
        
        system.assertEquals(1, st.size());
    }

    @isTest
    private static void dmlDemoTest3() {
        //1. prepare data
        salesforce_project__c sp = new salesforce_project__c();
        sp.Project_Name__c = 'Teach TESTS to Falcons';
        sp.Description__c = 'All 50% are great learners, still';
        sp.status__c = 'New';
        insert sp; 

        //10 DML
        //10 SOQL

        //this is actual method call.
        //RESET Governor limit before calling this method.
        Test.startTest();
        //2. call method
        DmlDemo2.dmlUpdateDemo_2_co();

        Test.stopTest();

        //3. assertion
        List<salesforce_ticket__c> st = [select id, subject__c, salesforce_project__c from salesforce_ticket__c where subject__c = 'learn apex'];
        
        system.assertEquals(1, st.size());
    }
   
}
