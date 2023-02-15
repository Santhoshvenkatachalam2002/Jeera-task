trigger CountbooksTrigger on Borrower_Details__c (before insert) {
    double count=1;
    List<Membership_Bands__c> llbb=new List<Membership_Bands__c>(); 
    for(Borrower_Details__c bb:trigger.New)
    {
       llbb=[select id,Books_borrowed__c from Membership_Bands__c where id=:bb.Membership_Bands__c];
    }
    for(Membership_Bands__c mm:llbb)
    {
        count=count + mm.Books_borrowed__c;
        mm.Books_borrowed__c=count;
    }
    update llbb;
}