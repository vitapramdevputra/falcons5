public class DmlDemo2 {
    public static void dmlUpdateDemo_2_co() {
        salesforce_project__c sp = [select id from salesforce_project__c
                                    ORDER BY createdDate DESC limit 1];
        salesforce_ticket__c st = new salesforce_ticket__c();
        st.Subject__c = 'learn apex';
        st.priority__c = 'High';
        st.status__c = 'New';
        st.salesforce_project__c = sp.id;
        insert st;
        system.debug('salesforce ticket: ' + st);
    }

    public static void dmlMultipleRecordInsert_right() {
        list<account> listAccount = new list<account>();

        account acc = new account();
        acc.Name = 'SoftInnovas 28 Feb v0';
        acc.accountNumber = 'acbx-1';
        acc.Active__c = 'Yes';
        system.debug('before saving acc = ' + acc);
        listAccount.add(acc);

        for (Integer i = 1; i < 150; i++) {
            account acc2 = new account();
            acc2.Name = 'SoftInnovas 28 Feb v'+i;
            acc2.accountNumber = 'acbx-1'+i;
            acc2.Active__c = 'Yes';
            listAccount.add(acc2);
        }
        system.debug('size of list ' + listAccount.size());
        if(!listAccount.isEmpty()){
            insert listAccount;
        }
    }

    public static void dmlMultipleRecordUpdate_right() {
        List<account> listAcc = [select id, name from account where createdDate = Today];

        List<account> updateAccounts = new list<account>();

        for (Account acc : listAcc) {
            acc.name = acc.name + ' via B.0';
            //acc.description = 'test update';
            updateAccounts.add(acc);
        }
        
        //(updateAccounts.isEmpty() == false)
        if(!updateAccounts.isEmpty()){
            update updateAccounts;
        }
    }
    public static void deleteAcc() {
        //List<account> listAcc = [select id, name from account where createdDate = Today];
        Delete [select id, name from account where createdDate = Today];
    }
}
