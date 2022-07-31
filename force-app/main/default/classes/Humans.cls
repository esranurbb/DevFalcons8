public class Humans {
    public string fullName(string fn, string ln){
        string full = (fn + ' ' + ln).toUpperCase();
        return full;
    }

    public integer age(date birthDate){
        integer a = 0;
        date today = date.today();
        integer daysAge = birthDate.daysBetween(today);
        a = Integer.valueOf(daysAge/365);
        return a;

    }
}
