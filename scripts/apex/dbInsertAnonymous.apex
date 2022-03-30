Account acc = new account();
acc.name = 'SI Test';

Account acc1 = new account();
acc1.name = 'SI Test11';

Account accx1 = new account();
Account accx2 = new account();

List<account> listAcc = new list<account>{acc, acc1, accx1, accx2};

List<Database.SaveResult> results = Database.insert(listAcc, false);

for (Database.SaveResult eachResult : results) {
    if (eachResult.isSuccess()) {
        system.debug('account inserted, account id is :' + eachResult.getId());
    } else {
        system.debug('errors: ' + eachResult.getErrors());
    }
}