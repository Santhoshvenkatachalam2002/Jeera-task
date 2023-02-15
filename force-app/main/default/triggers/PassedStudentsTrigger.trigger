trigger PassedStudentsTrigger on Contact (after insert,after delete,after update) {

if(Trigger.isInsert)
    {
    Studentpassed.pass(Trigger.New);
    }
else if(Trigger.isUpdate)
{
     Studentpassed.pass(Trigger.New);
}
if(Trigger.isDelete)
{
     Studentpassed.pass(Trigger.Old);
}
    
}