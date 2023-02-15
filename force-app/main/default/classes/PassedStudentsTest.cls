@isTest
public class PassedStudentsTest {
@isTest
private static void insMet()
{
  Account acc=new Account();
        acc.Name='Gomathi';
        acc.Standard__c='2nd standard';
        insert acc;
      List<Contact> Liscon=new List<Contact>();
        Contact con=new Contact();
        con.AccountId=acc.Id;
        con.Salutation='Mr.';
        con.FirstName='Rahul';
        con.LastName='c';
        con.Tamil__c=80;
        con.English_Marks__c=80;
        con.Maths_Marks__c=100;
        con.Science_Mark__c=99;
        con.Social_Mark__c=41;
        insert liscon;
    }
   private static void updMet()
   {
       Account acc=new Account();
        acc.Name='Gomathi';
        acc.Standard__c='2nd standard';
        insert acc;
        List<Contact> Liscon=new List<Contact>();
        Contact con=new Contact();
        con.AccountId=acc.Id;
        con.Salutation='Mr.';
        con.FirstName='Rahul';
        con.LastName='c';
        con.Tamil__c=80;
        con.English_Marks__c=80;
        con.Maths_Marks__c=100;
        con.Science_Mark__c=99;
        con.Social_Mark__c=41;
        Test.startTest();
        insert con;
        Contact con1=[select Social_Mark__c from Contact where AccountId=:acc.id ];
        con1.Social_Mark__c=43;
        update con1;
       Test.stopTest();
   }
}