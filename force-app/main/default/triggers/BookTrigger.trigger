trigger BookTrigger on Return__c (after insert,after update) {

     List<Book_Details__c> upd=new  List<Book_Details__c>();
    for(Return__c aa:Trigger.new)
    {
      upd=[select id,status__c from Book_Details__c where id=:aa.Borrower_Details__r.Book_Details__c];
    }
    for(Book_Details__c itr:upd)
    {
        itr.status__c='Available';
    }
    update upd;
}