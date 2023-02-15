/**
 * @description       : 
 * @author            : Santhosh V
 * @group             : 
 * @last modified on  : 08-24-2022
 * @last modified by  : Santhosh V
**/
public with sharing class GetCarType {


   @AuraEnabled(cacheable=true)
   public static List<Car_Type__c> getMet()
   {
    return [SELECT Name,Id FROM Car_Type__c];
   }
}
