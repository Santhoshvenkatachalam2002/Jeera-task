@isTest
public class Mapowntest {
@isTest
    public static void tesmethod()
    {
        List<Account> laa=new List<Account>();
       Account acc=new Account();
        acc.Name='Gomathi';
        acc.Standard__c='2nd standard';
        insert acc;
        laa.add(acc);
        Test.startTest();
        mapownmethods.Met(laa);
        Test.stopTest();       
    }
}