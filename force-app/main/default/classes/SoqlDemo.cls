public  class SoqlDemo {
   public static void accountSoql_1() {
       list<account> lstAcc = [select id, name from account];
       system.debug('account records = ' + lstAcc);
       system.debug('number of records = ' + lstAcc.size());

       Account acc = [select id, name from account order by createdDate desc limit 1];
       system.debug('latest created account is ' + acc);
   }
   public static void accountSoql_2() {
       Account acc = [select id, name,phone, accountNumber from account
                        Order by createdDate desc limit 1];
        system.debug('latest account record is ' + acc);
        string accName = acc.Name;
        string accPhone = acc.phone;
        system.debug('acc name is ' + accName + ', phone is ' + accPhone);
        system.debug('account number is ' + acc.accountNumber);
   }
   public static void accountSOQL_3() {
       list<account> listAcc = [select id, name, phone,accountNumber from Account 
                                ORDER by createdDate desc ];

        for (account eachAccount : listAcc) {
            string accName = eachAccount.Name;
            string accPHone = eachAccount.Phone;
            system.debug('acc Name = ' + accName + ', phone = ' + accPhone);
            system.debug('account number is ' + eachAccount.accountNumber);
        }
   }
   public static void accountSOQL_Filter(string accNameFilter) {
       List<account> listAcc = [select id, name from account where name = :accNameFilter];
       system.debug(listAcc);
   }
}
