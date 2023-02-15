trigger TotalStudents on Contact (after insert,after delete) {
    double count=0;
    if(Trigger.isInsert)
    {
   List<Contact> con1=new List<contact>();
   List<Account> acc1=new List<Account>();
    for(Contact cc:Trigger.New)
    {
     con1=[select AccountId from Contact where AccountId=:cc.AccountId];
     acc1=[select id,Total_Books__c from Account where id=:cc.AccountId];
    }
   
    for(integer i=1;i<=con1.size();i++)
    { 
        count=count+1;
    }
    for(Account acc:acc1)
    {
       acc.Total_Books__c=count;
    }
    update acc1;
}
if(Trigger.isDelete)
{
    List<Contact> con1=new List<contact>();
   List<Account> acc1=new List<Account>();
    
    for(Contact cc:Trigger.Old)
    {
     con1=[select AccountId from Contact where AccountId=:cc.AccountId];
     acc1=[select id,Total_Books__c from Account where id=:cc.AccountId];
    }
      for(integer i=1;i<=con1.size();i++)
    { 
        count=count+1;
    }
    for(Account acc:acc1)
    {
       acc.Total_Books__c=count;
    }
    update acc1;    
}
}