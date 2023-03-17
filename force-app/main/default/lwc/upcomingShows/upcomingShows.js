import { LightningElement, wire, api } from 'lwc';
import getUpcomingList from '@salesforce/apex/UpcomingShows.getUpcomingList';
import NAME_FIELD from '@salesforce/schema/Open_House_Show__c.Name';
import SHOWDATE_FIELD from '@salesforce/schema/Open_House_Show__c.Show_Date__c';
import STARTTIME_FIELD from '@salesforce/schema/Open_House_Show__c.Start_Time__c';
import ENDTIME_FIELD from '@salesforce/schema/Open_House_Show__c.End_Time__c';
import REMAININGNUMBERVISITORS_FIELD from '@salesforce/schema/Open_House_Show__c.Remaining_Number_Visitors__c';
const COLS = [
    {
        label: 'Open House',
        fieldName: NAME_FIELD.fieldApiName,
        editable: false
    },
    {
        label: 'Show Date',
        fieldName: SHOWDATE_FIELD.fieldApiName,
        editable: false
    },
    {
        label: 'Start Time',
        fieldName: STARTTIME_FIELD.fieldApiName,
        editable: false
    },
    {
        label: 'End Time',
        fieldName: ENDTIME_FIELD.fieldApiName,
        editable: false
    },
    {
        label: 'Remaining Visitors',
        fieldName: REMAININGNUMBERVISITORS_FIELD.fieldApiName,
        editable: false
    }
];
export default class OpenHouseShowCreation extends LightningElement {
    @api Open_House_Shows__c;
    columns = COLS;
    @wire(getUpcomingList)
    Open_House_Shows__c;
}