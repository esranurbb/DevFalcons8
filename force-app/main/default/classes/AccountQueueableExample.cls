public with sharing class AccountQueueableExample implements Queueable{
    List<Account> listAccs = new List<Account>();
    public AccountQueueableExample(List<Account> accs) {
        listAccs = accs;

    }
    public void execute(QueueableContext qc){
        for (Account acc : listAccs) {
            acc.Name += '--SI';
        }
        update listAccs;
    }
}
