public class PrimitiveDataTypeDemo {
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
}
