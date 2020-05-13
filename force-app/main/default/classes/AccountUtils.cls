public with sharing class AccountUtils {
    
    public static List<Account> accountsByState(String state){

        return [select Id,name from Account where BillingState=:state] ;

    }
}
