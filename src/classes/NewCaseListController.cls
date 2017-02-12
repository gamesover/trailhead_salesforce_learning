public with sharing class NewCaseListController {
	List<Case> newCases = New List<Case>();
	
    public List<Case> GetNewCases() {
    	newCases = [Select Id, CaseNumber From Case Where Status='New'];
    
        return newCases;
    }
}