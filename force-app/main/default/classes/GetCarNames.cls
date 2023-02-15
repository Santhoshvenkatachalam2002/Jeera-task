/**
 * @description       : 
 * @author            : Santhosh V
 * @group             : 
 * @last modified on  : 08-24-2022
 * @last modified by  : Santhosh V
**/
public with sharing class GetCarNames {
  @AuraEnabled(cacheable=true)
   public static List<Car__c> carNames(String value){
    
    if(value=='All Types')
    {
      system.debug('query returned');
      return [SELECT Name FROM Car__c ];
    }
    else 
    {
      system.debug('query returned');
     return [SELECT Name FROM Car__c WHERE Car_Type__c=:value];
    }
   }
}
