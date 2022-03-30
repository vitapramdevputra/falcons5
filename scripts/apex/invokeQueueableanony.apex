List<account> accs = [select id, name from account limit 20];
accountQueueableExample aqe = new accountQueueableExample(accs);
ID jobId = system.enqueueJob(aqe);
system.debug('job id ' + jobId);