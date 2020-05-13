
trigger CaseTrigger on Case (after insert) { 
  
    
    List<Case> casesToInsert = new List<Case>(); 

  /*  for (Case parent: Trigger.new) { 
        Case child = new Case();
         child.ParentId = parent.Id; 
         child.Subject = parent.Subject + ' Child'; 
         casesToInsert.add(child); } 
         insert casesToInsert; */
        }

