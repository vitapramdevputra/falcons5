DateTimeMethodsDemo dt = new DateTimeMethodsDemo();
// dt.calculateAgeInMonths();
// dt.calculateAgeInDays();
// dt.printSubscriptionEndDate();
//dt.printOfferEndDateTime();
date newDate = date.today();
boolean lp = dt.leapYearCheck(newDate);
system.debug(lp);