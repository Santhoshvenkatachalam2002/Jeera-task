trigger ZeroGradeStudents on Contact (after insert,after update,after delete) {

    if(Trigger.isinsert)
    {
    ZeroGradeStudents.Zerograde(Trigger.New);
}
    else if(Trigger.isUpdate)
    {
     ZeroGradeStudents.Zerograde(Trigger.New);
    }
    if(Trigger.isDelete)
    {
       ZeroGradeStudents.Zerograde(Trigger.Old); 
    }
}