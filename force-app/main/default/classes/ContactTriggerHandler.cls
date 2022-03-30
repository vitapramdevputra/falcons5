public with sharing class ContactTriggerHandler {
    public static void contactUpdateValidation1(List<contact> cntTriggerNew,
                List<contact> cntTriggerOld,
                map<id, contact> cntTriggerNewMap,
                map<id, contact> cntTriggerOldMap) {
        
        string customError = System.label.ContactValidation1;
        for (contact eachContact : cntTriggerNew) {
            if(eachContact.LeadSource == 'Partner Referral'){
                eachContact.addError(customError);
            }
        }
        
    }
}
