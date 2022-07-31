public class PrimitiveDataTypeDate {
    public void printNewDate(){
        system.debug('Create new date instance');
        
        Date newDate = Date.newInstance(1993, 1, 14);
        system.debug('New date is '+newDate);
        
        Date newDate2 = Date.newInstance(2022, 5, 25);
        system.debug('New date2 is '+newDate2);

        Date todayDate = Date.today();
        system.debug('Todays date is '+todayDate);

        }

    public void printNewTime(){
        Time myTime = Time.newInstance(18, 20, 20, 20);
        system.debug('myTime is ' + myTime);

        Time yourTime = Time.newInstance(10, 61, 10, 10);
        system.debug('yourTime is ' + yourTime);
    }    


    public void printNewDateTime(){
        Date newDate = Date.today();
        Time newTime = Time.newInstance(5, 5, 3, 10);
        DateTime newDateTime = Datetime.newInstance(newDate, newTime);
        system.debug('Date and time is ' + newDateTime);

        Datetime dt2 = Datetime.newInstance(2025, 1, 10);
        system.debug('Date and time is ' + dt2);

        Datetime dt3 = Datetime.newInstance(1985, 03, 19, 15, 15, 15);
        system.debug('Dt3 is ' + dt3);

        Long longtime = 0L;
        Datetime dt4 = Datetime.newInstance(longtime);
        system.debug(dt4);

        Long lt2 = 34843893489349L;
        Datetime dt44 = Datetime.newInstance(lt2);
        system.debug(dt44);

        Datetime dt6 = Datetime.now();
        system.debug(dt6);

        Datetime dt7 = Datetime.newInstanceGmt(2022, 2, 22, 2, 22, 22);
        system.debug(dt7);

    }
}
