List<Account> accs = [Select Id, Name From Account];
AccountQueueableExample aq = new AccountQueueableExample(accs);
ID jobId = system.enqueueJob(aq);
system.debug('Job Id is ---- ' + jobId);