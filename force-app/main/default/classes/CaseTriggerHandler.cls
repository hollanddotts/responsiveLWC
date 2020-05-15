public with sharing class CaseTriggerHandler {
    



    public void createChildCases(List<Case> listcases){
        List<Case> newcaseList = new List<Case>();
        for (Case a:listcases){
            Case css = new Case();
            css.parentid = a.Id;
            css.Status = a.Status;
            css.Origin = a.Origin;
            
            newcaseList.add(css);
                }
                insert newcaseList;
    }
    public void onAfterInsert (List<Case> listcases){
     createChildCases(listcases);
    }

}
