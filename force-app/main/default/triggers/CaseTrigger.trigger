trigger CaseTrigger on Case (before insert, before update, before
delete, after insert, after update, after delete,  after undelete) { 
 
    CaseTriggerHandler mycaseHandler = new CaseTriggerHandler();

  if (Trigger.isAfter && Trigger.isInsert) {
   // mycaseHandler.onAfterInsert(Trigger.New);
}
  
  
        }

