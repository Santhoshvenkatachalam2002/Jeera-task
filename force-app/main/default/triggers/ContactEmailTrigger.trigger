trigger ContactEmailTrigger on Contact (before insert,before update) {

   set<String> Email = new set<String>();
   set<String> ExEmail = new set<String>();
   for(Contact con : Trigger.new)
   {
          Email.add(con.Email);

    }

    for(Contact con : [select Email from contact where Email in : Email])
   {
          ExEmail.add(con.Email);
    }

   if(Trigger.isInsert || Trigger.isUpdate)
   {
     for(contact err:trigger.new)
     {
         if(ExEmail.contains(err.Email))
        {
            
                 err.Email.adderror('This is an existing email');
          }
     }
}
}