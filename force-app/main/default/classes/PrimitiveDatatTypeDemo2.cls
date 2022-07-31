public class PrimitiveDatatTypeDemo2 {
    public void printBasicDataType(){
        string batchName = 'Falcons';
        integer totalCandidates = 40;
        boolean isAdminCompleted = true;

        system.debug(batchName);
        system.debug(totalCandidates);
        system.debug(isAdminCompleted);

        string batchDescription = batchName + ' are the best';
        system.debug(batchDescription);

    }
    public void printBasicDataType2(){
        decimal decValue = 27.01;
        system.debug('Decimal: ' + decValue);

        long longValue = 34782346348236458L;
        system.debug('Long: ' + longValue);

        ID id1 = '0018Z00002eznq0QAA';
        ID id2 = 'striingrecord';
        system.debug('Id is '+ id1);

    }




}
