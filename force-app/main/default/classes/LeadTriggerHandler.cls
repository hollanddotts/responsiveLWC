public with sharing class LeadTriggerHandler {
   class art{
       String ss;
   }


    public void CreateNewContact(List<Lead> leads){
        List<Contact> listcon = new List<Contact>();
        set<string> ContactsEmailsSet = GetExistingContactsEmails();

         for(Lead a:leads){
            if(!ContactsEmailsSet.Contains(a.email)){

                Contact con = new Contact();
                con.lastname= a.lastname;
                con.firstname=a.firstname;
                con.email=a.email;
                
                
                listcon.add(con);

            }
            
         }
         insert listcon;
     
        }
        //get existing contact email
        public  set<string> GetExistingContactsEmails()
        {
            
            List<Contact> Contactlist2 =  [select id,email from Contact ];
            
            set<string> ContactsEmailsSet = new set<string>();
            For(Contact c:Contactlist2)
            {
                ContactsEmailsSet.add(c.email);
            }
     
            return ContactsEmailsSet;
        }


   public  void createcontactwithcatch (List<Lead> leads){
    List<Contact> listcon = new List<Contact>();
    

     for(Lead a:leads){
     

            Contact con = new Contact();
           // con.lastname= a.lastname;
            con.firstname=a.firstname;
            con.email=a.email;
            
            
            listcon.add(con);

        
     }
     try{insert listcon;}
     catch(Exception s){
         System.debug(s);
     }
     

   }


    public  void onAfterInsert(List<Lead> leads){              
       // CreateNewContact(leads);
        createcontactwithcatch(leads);      
    }

       
   
    
  
}
