public class ZeroGradeStudents {

    public static void Zerograde(List<Contact> contrig)
    {
    List<Account> acc=new List<Account>();
    double value=0;
    List<Contact> cc=new List<Contact>();
    for(Contact con:contrig)
    {
      cc=[select AccountId,Tamil__c,Social_Mark__c,Science_Mark__c,English_Marks__c,Maths_Marks__c from Contact where AccountId=:con.AccountId];
      acc=[select id,Student_with_Zero_Grade__c from Account where id=:con.AccountId]; 
    }
    for(Contact con:cc)
    {
        double Total=con.Tamil__c + con.English_Marks__c + con.Maths_Marks__c + con.Science_Mark__c + con.Social_Mark__c;
        if(Total>=450)
        {
          value=value+1;
        }
      for(Account aa:acc)
      {
          aa.Student_with_Zero_Grade__c=value;
      }
        update acc;
    }
    }
    
}