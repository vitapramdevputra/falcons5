public  class PrimitiveDataTypeDemo {
    public void printBasicDataType(){
        string batchName = 'Falcons 5';
        integer totalCandidates = 80;
        boolean isAdminCompleted = true;

        string batchDescription = batchName + ' are the bestest.';
        system.debug(batchDescription);
        system.debug('total # of candidates: ' + totalCandidates);

        Decimal decValue = 27.01;
        system.debug('decimal : ' + decValue);

        Long longValue = 3146786654l;
        system.debug('long: ' + longValue);

        Object obj = 'This is a string';
        Object obj2 = 10;

        system.debug('obj = ' + obj);
        system.debug('obj2 = ' + obj2);

        ID id1 = '0015j00000WXODgAAP';
        system.debug('id is ' + id1);
    }

    public void printBasicDataType2(string anythinggggg){
        string batchName = anythinggggg;
        system.debug('batch name is ' + batchName);
    }
    public void printBasicDataType3(string bn, integer candidates, boolean ac){
        candidates = candidates + 5;
        string batchName = bn;
        integer totalCandidates = candidates;
        boolean isAdminCompleted = ac;

        string batchDescription = batchName + ' are the bestest.';
        system.debug(batchDescription);
        system.debug('total # of candidates: ' + totalCandidates);


    }
    public void printNewDate(){
        system.debug('create new date instance');
        Date newDate = Date.newInstance(1995, 2, 17);
        Date newDate2 = Date.newInstance(2021, 10, 7);
        system.debug('new date = ' + newDate);
        system.debug('newDate 2 is ' + newDate2);

        Date todayDate = date.today();
        system.debug('today\'s date : ' + todayDate);
    }

    public void printNewTime(){
        Time myTime = Time.newInstance(18, 20, 2, 30);
        Time meTime = time.newInstance(11, 11, 11, 11);
        system.debug('my time - ' + myTime);
        system.debug('mee time - ' + meTime);
    }

    public void printNewDateTime(){
        date newDate = date.today();
        time newtime = time.newInstance(23, 23, 23, 23);
        //1. with Date and Time
        Datetime dt1 = Datetime.newInstance(newDate, newTime);
        system.debug('first date time instance is ' + dt1);

        //2. Year, month, day
        Datetime dt2 = datetime.newInstance(2025, 1, 9);
        system.debug('datetime 2nd instance is ' + dt2);

        //3. Year, month, day, hour, minute, second
        Datetime dt3 = Datetime.newInstance(2021, 10, 9, 0, 0, 0);
        system.debug('dt 3 is ' + dt3);
        Datetime dt3_2 = Datetime.newInstance(2021, 10, 9, 2, 0, 0);
        system.debug('dt 3.2 is ' + dt3_2);

        Long longtime = 1341828183000L;
        Datetime dt4 = Datetime.newInstance(longtime);
        system.debug('long time is = ' + dt4);

        datetime dt5 = Datetime.newInstanceGmt(1998, 1, 28, 18, 2, 3);
        system.debug('dt 5 gmt date ' + dt5);

        Datetime dt6 = datetime.now();
        system.debug('now ' + dt6);
    }



    
}
