public class systemmethods implements database.Batchable<sobject>
{
    
 public database.QueryLocator start(database.BatchableContext bc)
 {
     string acc;
     acc='select id,Name from Account';
     return database.getQueryLocator(acc);
 }
    
 public void execute(database.BatchableContext bc,List<Account> acc2)
 {
    Map<id,Account> mm=new Map<id,Account>(acc2);
     system.debug(mm);
    
 }
    public void finish(database.BatchableContext bc)
    {
        
    }
public class schedule implements schedulable
    {
public void execute(system.schedulablecontext c)
{
    systemmethods ss=new systemmethods();
    database.executeBatch(ss);
}
}
}