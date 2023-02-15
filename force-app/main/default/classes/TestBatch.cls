global class TestBatch implements Database.Batchable<sObject> {
    
    global Database.QueryLocator start(Database.BatchableContext bc)
    {
        string query='select Email from Lead';
        return Database.getQueryLocator(query);
    }
    
    global void execute(Database.BatchableContext bc,List<Lead> batchleadlist)
    {
        for(Lead getbatchleadlist:batchleadlist)
        {
            getbatchleadlist.Email='s@gmail.com';
        }
        update batchleadlist;
    }
    
    global void finish(Database.BatchableContext bc)
    {
   Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
   String[] toAddresses = new String[] {'santhoshvenkatachalam2002@gmail.com','191it040@gmail.com'};
   mail.setToAddresses(toAddresses);
   mail.setSubject('EMAIL CHANGED');
   mail.setPlainTextBody('HI' + 'Your Email Was Changed');
   Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
    }       
}