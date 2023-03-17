import { LightningElement, api } from 'lwc';
import OPEN_HOUSE_SHOW_OBJECT from '@salesforce/schema/Open_House_Show__c';

export default class OpenHouseShowDetails extends LightningElement {
    @api openHouseShow = {
        Name: '',
        Show_Type__c: '',
        Show_Date__c: '',
        Start_Time_Picklist__c: '',
        End_Time_Picklist__c: '',
        Street_and_Number__c: '',
        City__c: '',
        State__c: '',
        Country__c: '',
        Max_Number_of_Visitor__c: '',
        Is_Live_Show__c: false,
        Is_Published__c: false,
        openHouseShowRecord: {
            Id: '',
            [OPEN_HOUSE_SHOW_OBJECT.Name.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.Show_Type__c.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.Show_Date__c.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.Start_Time_Picklist__c.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.End_Time_Picklist__c.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.Street_and_Number__c.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.City__c.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.State__c.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.Country__c.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.Max_Number_of_Visitor__c.fieldApiName]: '',
            [OPEN_HOUSE_SHOW_OBJECT.Is_Live_Show__c.fieldApiName]: false,
            [OPEN_HOUSE_SHOW_OBJECT.Is_Published__c.fieldApiName]: false
        }
    };
}