public class Studentsfailed {

public static void Met(List<Contact> contrig)
{
    List<Account> acc=new List<Account>();
    double increment=0;
    List<Contact> cc=new List<Contact>();
    for(Contact con:contrig)
    {
      cc=[select AccountId,Tamil__c,Social_Mark__c,Science_Mark__c,English_Marks__c,Maths_Marks__c from Contact where AccountId=:con.AccountId];
      acc=[select id,Student_failed_in_one_subject__c from Account where id=:con.AccountId]; 
    }
    for(Contact con:cc)
    {
        if(con.Tamil__c<40 || con.Social_Mark__c<40 || con.Science_Mark__c<40 || con.Maths_Marks__c<40 || con.English_Marks__c<40)
        {
          increment=increment+1;
        }
      for(Account aa:acc)
      {
          aa.Student_failed_in_one_subject__c=increment;
      }
        update acc;
    }
} 
}