trigger LeadTrigger on Lead (before insert, before update, before
delete, after insert, after update, after delete,  after undelete) {

    LeadTriggerHandler  myLeadHandler = new LeadTriggerHandler();

   
    if (Trigger.isAfter && Trigger.isInsert) {
        myLeadHandler.onAfterInsert(Trigger.New);
    }

}