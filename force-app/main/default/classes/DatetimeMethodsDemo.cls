public class DatetimeMethodsDemo {
    public void calculateAgeInMonths(){
        date birthDate = date.newInstance(1986, 08, 16);
        date todaysDate = date.today();
        integer m = birthDate.monthsBetween(todaysDate);
        system.debug(m);
        
    }

    public void calculateAgeInDays(){
        date birthDate = date.newInstance(1986, 08, 16);
        date todaysDate = date.today();
        integer m = birthDate.daysBetween(todaysDate);
        system.debug(m);
        
    }


    public void printSubscriptionEndDate(){
        Date subscriptionStartDate = date.today();
        Date subscriptionEndDate = subscriptionStartDate.addDays(-1000);
        system.debug(subscriptionEndDate);

        integer endDateYear = subscriptionEndDate.year();
        integer endDateMonth = subscriptionEndDate.month();
        system.debug(endDateYear);
        system.debug(endDateMonth);
        integer endDateDay = subscriptionEndDate.day();
        system.debug(endDateDay);
    }

    public void printOfferEndDateTime(){
        Datetime offerStartDateTime = Datetime.now();
        Datetime offerdtEndDate = offerStartDateTime.addHours(-51);
        Date offerEndDate = offerdtEndDate.date();
        system.debug(offerEndDate); 
        integer yearOfOffer = offerdtEndDate.year();
        integer hour = offerdtEndDate.hour();
        system.debug(yearOfOffer);
        system.debug(hour);
    }

    
}
