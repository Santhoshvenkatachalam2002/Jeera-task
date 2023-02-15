trigger Accountcontacttrigger on Account (before insert,before update) {

    if(Trigger.isInsert)
   {
    list<Contact> acclist = new list<Contact>();
    for(Account acc:Trigger.new)
    {
        Contact con = new Contact();
        Con.FirstName ='Santhosh';
        Con.AccountId =acc.Id;
        Con.LastName =acc.Name;
        acclist.add(con);
    }
insert acclist;
}
    if(Trigger.isUpdate)
    {
     list<Contact> acclist1 = new list<Contact>();
     for(Account acc2:Trigger.new)
     {
      acclist1=[select id from Contact where AccountId=:acc2.id];   

        if(acclist1.size()== 0)
        {
        Contact con = new Contact();
        Con.FirstName ='Saturn';
        Con.AccountId =acc2.Id;
        Con.LastName =acc2.Name;
        acclist1.add(con);
        }
     }
update acclist1;
            
        }
            
    }