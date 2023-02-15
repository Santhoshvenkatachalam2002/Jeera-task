@isTest
public class HighestMarksTest {

    @isTest static void tesmet()
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
      Account acc2=[select Highest_Mark_in_Tamil__c,Highest_Mark_in_English__c,Highest_Mark_in_Maths__c,Highest_Mark_in_Science__c,Highest_Mark_in_Social__c from Account where id=:acc.id];
      system.assertEquals(con.Tamil__c,acc2.Highest_Mark_in_Tamil__c);
      system.assertEquals(con.English_Marks__c,acc2.Highest_Mark_in_English__c);
      system.assertEquals(con.Maths_Marks__c,acc2.Highest_Mark_in_Maths__c);
      system.assertEquals(con.Science_Mark__c,acc2.Highest_Mark_in_Science__c);
      system.assertEquals(con.Social_Mark__c,acc2.Highest_Mark_in_Social__c);
        
    }
  
}