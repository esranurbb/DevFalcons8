public with sharing class AccountsSchedulable implements Schedulable{
    public void execute (SchedulableContext sc) {
        AccouuntsBatch ab = new AccouuntsBatch();
        Id batchId = Database.executeBatch(ab, 20);

    }
}