public class Humans {
    public string FullName(string firstName, string lastName){
        string fullName = '';
        fullName = firstName.toUpperCase();
        fullName += ' ' + lastName.toUpperCase();
        return fullName;
    }

    public integer age(date birthdate){
        integer a = 0;
        date today = date.today();
        integer daysAge = birthdate.daysBetween(today);
        a = Integer.valueOf(daysAge/365);
        return a;
    }
}
