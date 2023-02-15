trigger FailedStudentsTrigger on Contact (after insert,after update,after delete) {
    
    if(Trigger.isInsert)
    {
    Studentsfailed.Met(Trigger.New);
    }
    else if(Trigger.isUpdate)
    {
        Studentsfailed.Met(Trigger.New);
    }  
    if(Trigger.isDelete)
    {
        Studentsfailed.Met(Trigger.Old);
    }
}