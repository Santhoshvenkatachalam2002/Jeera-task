trigger HighestMarks on Contact (after insert,after update,after delete) {
    
    if(Trigger.isInsert || Trigger.isupdate)
    {
     HighestMarksapex.Highestmarks(Trigger.new);      
}
    if(Trigger.isDelete)
    {
      HighestMarksapex.HighestMarks(Trigger.Old);  
    }
}