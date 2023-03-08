//Create a trigger to prevent users to create a Lead with anexisting first name and last name.
//Add an error message on the first name field

trigger DuplicatePreventionOnLead on Lead (before insert) {//trigger new
    
    List<Lead> leadList=[SELECT Id, firstName, lastName from Lead];
    
    for(Lead myLead: Trigger.New){
        
        for(Lead oldLead: leadlist){
            
            if(myLead.firstName==oldLead.firstName && myLead.lastName==oldLead.lastName){
                
                myLead.firstName.addError('Lead already exists with the same Lead first name and last name');
            }
            
        }
    }
    
}