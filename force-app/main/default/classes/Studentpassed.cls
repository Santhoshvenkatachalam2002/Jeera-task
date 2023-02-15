public class Studentpassed {

    public static void pass(List<Contact> contrig)
    {
    List<Account> acc=new List<Account>();
    double value=0;
    double increment =0;
    List<Contact> cc=new List<Contact>();
    for(Contact con:contrig)
    {
      cc=[select AccountId,Tamil__c,Social_Mark__c,Science_Mark__c,English_Marks__c,Maths_Marks__c from Contact where AccountId=:con.AccountId];
      acc=[select id,Students_Passed_in_All_subjects__c from Account where id=:con.AccountId]; 
    }
    for(Contact con:cc)
    {
        if(con.Tamil__c>=40 && con.Social_Mark__c>=40 && con.Science_Mark__c>=40 && con.Maths_Marks__c>=40 && con.English_Marks__c>=40)
        {
          value=value+1;
        }
      for(Account aa:acc)
      {
          aa.Students_Passed_in_All_subjects__c=value;
      }
        update acc;
        
    }
}    
    
}