public without sharing class UpcomingShows {
    @AuraEnabled(cacheable=true)
       public static List <Open_House_Show__c> getUpcomingList() {
           return [
               SELECT Name, Open_House__c, Show_Date__c, Start_Time__c, End_Time__c, Remaining_Number_Visitors__c
               FROM Open_House_Show__c
               LIMIT 10
           ];
       }
   }