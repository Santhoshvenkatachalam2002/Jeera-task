@isTest
public class TotalStudentsTest {
@isTest
   private static void Met()
   {
       Account acc=new Account();
        acc.Name='Gomathi';
        acc.Standard__c='2nd standard';
        insert acc;
      List<Contact> Liscon=new List<Contact>();
        Contact con=new Contact();
    for(integer i=0;i<4;i++)
    {
        con.AccountId=acc.Id;
        con.Salutation='Mr';
        con.FirstName='Rahul';
        con.Tamil__c=80;
        con.English_Marks__c=80;
        con.Maths_Marks__c=100;
        con.Science_Mark__c=99;
        con.Social_Mark__c=41;
    }
    liscon.add(con);
    for(integer i=0;i<10;i++)
    {
      con.AccountId=acc.Id;
        con.Salutation='Mr';
        con.FirstName='devid';
        con.Tamil__c=24;
        con.English_Marks__c=50;
        con.Maths_Marks__c=100;
        con.Science_Mark__c=67;
        con.Social_Mark__c=89;  
    }
    liscon.add(con);
       insert liscon;
   }
}