public class HighestMarksapex {

    public static void Highestmarks(List<Contact> cc)
    {
        double maxtamil=0;
        double maxenglish=0;
        double maxmaths=0;
        double maxscience=0;
        double maxsocial=0;
        List<Account> acc=new List<Account>();
        for(Contact c:cc)
    {
      AggregateResult[] result1=[select MAX(Tamil__c)maxtam from Contact where AccountId=:c.AccountId];
      maxtamil=(double)result1[0].get('maxtam');
      AggregateResult[] result2=[select MAX(English_Marks__c)maxeng from Contact where AccountId=:c.AccountId];
      maxenglish=(double)result2[0].get('maxeng');
      AggregateResult[] result3=[select MAX(Maths_Marks__c)maxmat from Contact where AccountId=:c.AccountId];
      maxmaths=(double)result3[0].get('maxmat');
      AggregateResult[] result4=[select MAX(Science_Mark__c)maxsci from Contact where AccountId=:c.AccountId];
      maxscience=(double)result4[0].get('maxsci');
      AggregateResult[] result5=[select MAX(Social_Mark__c)maxsoc from Contact where AccountId=:c.AccountId];
      maxsocial=(double)result5[0].get('maxsoc');
      acc=[select id,Highest_Mark_in_Tamil__c,Highest_Mark_in_Social__c,Highest_Mark_in_Science__c,Highest_Mark_in_Maths__c,Highest_Mark_in_English__c from Account where id=:c.AccountId];
    }
        for(Account accupd:acc)
        {
            accupd.Highest_Mark_in_Tamil__c=maxtamil;
            accupd.Highest_Mark_in_English__c=maxenglish;
            accupd.Highest_Mark_in_Maths__c=maxmaths;
            accupd.Highest_Mark_in_Science__c=maxscience;
            accupd.Highest_Mark_in_Social__c=maxsocial;
        }
        update acc;
             
}
    
}