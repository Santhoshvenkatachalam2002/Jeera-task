trigger BookStatusupdateTrigger on Borrower_Details__c (after insert) {
     
    List<Book_Details__c> dd=new List<Book_Details__c>();
    for(Borrower_Details__c vv:Trigger.New)
    {
       dd=[select id,status__c from Book_Details__c where id=:vv.Book_Details__c];
    }
    for(Book_Details__c ee:dd)
    {
        ee.status__c='Borrowed';
    }
    update dd;
}