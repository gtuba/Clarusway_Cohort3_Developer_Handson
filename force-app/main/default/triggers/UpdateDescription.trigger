//Create a trigger to update the description
//a. As «This opportunity was updated by Lucian (your user name as dynamic)» when an opportunity is updated,
//b. As «This opportunity was created by Lucian (your user nameas dynamic)» when an opportunity is created,
trigger UpdateDescription on Opportunity (before insert, before update) {
    for(Opportunity o: Trigger.New){
        if(Trigger.isInsert){
            o.Description= ('This opportunity was created by ' +  UserInfo.getName());
        }
        if(Trigger.isUpdate){
            o.Description= ('This opportunity was updated by ' +  UserInfo.getName());
        }
    }
}