trigger RollupTrigger on Opportunity (before insert,before update) {

   List<Opportunity> oppid=new List<Opportunity>();
    double sumamt;
   for(Opportunity opp:Trigger.New)
   {
       if(opp.StageName=='Closed Won')
       List<Opportunity> oppid=[select AccountId from Opportunity where id=:opp.Id];
   }
    
    for(Opportunity o:oppid)
    {
      AggregateResult[] result1=[select SUM(Amount)summ from Opportunity where AccountId=:o.AccountId];
      sumamt=(integer)result1[0].get('summ');
    }
    
    Account aa=new Account();
    List<Account> acclis=new List<Account>();
    for(Opportunity a:oppid)
    {
       List<Account> acclis=[select id,AnnualRevenue from Account where id=:a.AccountId];
    }
    for(Account acc:acclis)
    {
    
    acc.AnnualRevenue=sumamt;  
}
    update acclis;
}