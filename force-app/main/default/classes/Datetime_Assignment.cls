public class Datetime_Assignment {
    public void diffOfDate(){
        Date varTodaysDate = Date.newInstance(2022, 07, 14);
        Date varTomorrowDate = Date.newInstance(2022, 07, 15);
        integer diff = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug(diff);

    }

    public void TimeCheck(){
        datetime varTomorrowDateTime = Datetime.newInstance(2022, 07, 15, 7, 0, 0);
        datetime var10DaysDateTime = datetime.newInstance(2022, 07, 25, 9, 0, 0);
        long varDateTimeLong = 12339874361L;
        datetime var7DaysLater = varTomorrowDateTime.addDays(7);
        system.debug(var7DaysLater);
        datetime var10DaysLater = var10DaysDateTime.addDays(10);
        system.debug(var10DaysLater);
        


    }


}
