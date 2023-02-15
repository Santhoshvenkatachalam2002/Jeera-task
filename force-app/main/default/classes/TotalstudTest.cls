@isTest
public class TotalstudTest {
@isTest
    private static void Met()
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
        con.LastName='ss';
        con.Tamil__c=80;
        con.English_Marks__c=80;
        con.Maths_Marks__c=100;
        con.Science_Mark__c=99;
        con.Social_Mark__c=41;
      Test.startTest();
        insert con;
        con.Email='s@gmail.com';
        update con;
        List<Contact> con1=[select id from Contact where id=:con.id];
        delete con1;
      Test.stopTest();
    }
}