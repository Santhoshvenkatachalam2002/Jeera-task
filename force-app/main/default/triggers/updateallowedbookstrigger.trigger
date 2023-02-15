trigger updateallowedbookstrigger on Membership_Bands__c (before insert,before update) {

    Membership_Bands__c cc=new Membership_Bands__c();
    for(Membership_Bands__c vv:Trigger.New)
    {
        if(vv.Membership_Bands__c=='Platinum')
        {
          vv.Book_Allowed__c=5;  
        }
        else if(vv.Membership_Bands__c=='Gold')
        {
            vv.Book_Allowed__c=3;
        }
        else
        {
            vv.Book_Allowed__c=1;
        }
    }
}