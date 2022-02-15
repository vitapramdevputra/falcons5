public class DateTimeMethodsDemo {
    public void calculateAgeInMonths(){
        //1. birthdate
        date birthdate = date.newInstance(1990, 10, 9);
        date todayDate = date.today();

        integer ageInMonths  = birthdate.monthsBetween(todayDate);
        system.debug('Vitap age in Months = ' + ageInMonths);

    }
    public void calculateAgeInDays(){
        //1. birthdate
        date birthdate = date.newInstance(1990, 10, 9);
        date todayDate = date.today();
        integer ageInDays  = birthdate.daysBetween(todayDate);
        system.debug('Vitap age in days = ' + ageInDays);
    }

    public void printSubscriptionEndDate(){
        date subscriptionStartDate = date.today();

        date subscriptionEndDate = subscriptionStartDate.addDays(1000);
        system.debug('subs end date = ' + subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        integer endDateMonth = subscriptionEndDate.month();
        System.debug('Subs end date year is ' + endDateYear);
        System.debug('Subs end date month is ' + endDateMonth);

        integer endDateDay = subscriptionEndDate.day();
    }
    public void printOfferEndDateTime(){
        datetime dtNow = datetime.now();

        Datetime dtOfferEnd = dtNow.addHours(51);
        system.debug('offer will end on ' + dtOfferEnd);

        date offerEndDate = dtOfferEnd.date();
        system.debug('offer end date is ' + offerEndDate);
        
    }

    public boolean leapYearCheck(date dt){
        integer year = dt.year();
        boolean lp = date.isLeapYear(year);
        return lp;
    }
}
