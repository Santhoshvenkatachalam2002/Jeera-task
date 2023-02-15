@isTest
public class FailedStudentsTest {

  public  static testmethod void Met()
  {
      Account acc=new Account();
        acc.Name='Gomathi';
        acc.Standard__c='2nd standard';
        insert acc;
         List<Contact> Liscon=new List<Contact>();
      Contact con=new Contact();
        con.AccountId=acc.Id;
        con.Salutation='Mr';
        con.FirstName='Rahul';
        con.Tamil__c=80;
        con.English_Marks__c=80;
        con.Maths_Marks__c=100;
        con.Science_Mark__c=99;
        con.Social_Mark__c=41;
        liscon.add(con);
        insert liscon;
        Account acc2=[select Student_failed_in_one_subject__c from Account where id=:acc.id];
        system.assertEquals(0,acc2.Student_failed_in_one_subject__c);
  }
    
}