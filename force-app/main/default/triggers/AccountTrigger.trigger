trigger AccountTrigger on Account (before insert, before update, before
delete, after insert, after update, after delete,  after undelete) {

    AccountTriggerHandler  Accounthandler = new AccountTriggerHandler();


    if (Trigger.isAfter && Trigger.isInsert) {
        Accounthandler.onAfterInsert(Trigger.New);
    }
    //Write an Apex trigger that fires before records are inserted and ensures that the ShippingState field has the same value as the BillingState field
    if (Trigger.isBefore && Trigger.isInsert) {

        Accounthandler.onBeforeInsert(Trigger.new);
    }

}