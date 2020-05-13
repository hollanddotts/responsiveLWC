public with sharing class AccountTriggerHandler {
     //HKA 05.05.2020 
   public  void CreateAccounts(List<Account> accts){
  
    for(Account a:accts){
        if(a.BillingState!=null && a.BillingState!=a.ShippingState ){
            a.ShippingState= a.BillingState;
        }
 
             
 }

}
public void CreateNewOpportunity(List<Account> accts){
    List<Opportunity> listOpp = new List<Opportunity>();
     for(Account a:accts){
         Opportunity opp = new opportunity();
         opp.name= a.name+' '+'Opportunity';
         opp.AccountId=a.Id;
         opp.Stagename='Prospective';
         opp.CloseDate=System.Today().addMonths(1);
         
         listOpp.add(opp);
     }
     insert listOpp;
 
    }

public  void onBeforeInsert(List<Account> accts){
     
    CreateAccounts(accts);
    
             
}
public  void onAfterInsert(List<Account> accts){
    System.debug(accts);
         
    CreateNewOpportunity(accts);
          
}


}
