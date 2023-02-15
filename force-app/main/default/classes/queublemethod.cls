public class queublemethod implements queueable{
  
    Contact c;
    string name;
    public void queublemethod(Contact c,string name)
    {
        this.c=c;
        this.name=name;
    }
    public void execute(queueablecontext bv)
    {
        ApplicationReadWriteMode mode = System.getApplicationReadWriteMode();
        if (mode == ApplicationReadWriteMode.READ_ONLY) {
            system.debug('Read only method');
    } else if (mode == ApplicationReadWriteMode.DEFAULT) {
        List<Account> acc=[select id,Email__c from Account where Email__c=:name];
 
        for(Account aa:acc)
        {
            c.AccountId=aa.id;
        }
        insert c;
        
    }
}
}
/*
 Contact c=new Contact();

c.Name='santhosh';

queublemethod queue=new queublemethod(c,'santhosh');
queublemethod queue1=new queublemethod(c,'santhosh');

//enqueue job

id job=system.enqueueJob(queue);

//dequeue job

id job=system.dequeueJob();

//abort job
system.abort(job);

//assert
system.assert(job,'check your code');

//assert not equals

system.assertNotEquals(id,job,'error');

//curent time millisecond

system.currentTimeMillis();

//equals

system.equals(queue,queue1);

//hashcode

system.hashCode(queue); */