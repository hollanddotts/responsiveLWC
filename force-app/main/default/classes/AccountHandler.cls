public with sharing class AccountHandler {


    //HKA 05.05.2020 my first apex trigger handler after fails on Soljit

   public static  void CreateNewOpportunity(List<Account> accts){
   List<Opportunity> listOpp = new List<Opportunity>();
    for(Account a:accts){
        Opportunity opp = new opportunity();
        opp.name= a.name+'Opportunity';
        opp.AccountId=a.Id;
        opp.Stagename='Prospective';
        opp.CloseDate=System.Today().addMonths(1);
        
        listOpp.add(opp);
    }
    insert listOpp;

   }
   //HKA 05.05.2020 
   public static void CreateAccounts(List<Account> accts){
       List<Account> newlist = new List<Account>();
       for(Account a:accts){
        a.ShippingState= a.BillingState;
        newlist.add(a);
                
    }
    insert newlist;


   }
}

