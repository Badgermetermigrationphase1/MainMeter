trigger LeadTrigger on Lead (before insert) {

   /* 
      This is a quick trigger written to support a demo.  
   
      When the Lead is inserted, the Zip Code will be retrieved.  This will be compared to the 
      Geo_Data_Map__c table, and the matching row retrieved.
      
      If the Lead Record Type is Flow, it will set the value of the Territory_Name_2__c field to the
      value of the Geo_Data_Map__c.Flow_Territory__c field.  Otherwise, the Lead.Uterritory2__c and 
      Lead.UTerritory_Name__c fields will be set to the Geo_Data_Map__c.Uterritory_2__c and 
      Geo_Data_Map__c.Uterritory_Name__c field values.
      
   */
   
   // Must be named LeadInsert
   LeadTriggerManager.updateTerritoryName(trigger.new);   
}