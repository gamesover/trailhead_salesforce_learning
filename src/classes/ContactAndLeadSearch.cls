public with sharing class ContactAndLeadSearch {
     public static List<List<SObject>> searchContactsAndLeads(String parameter) {
        
        List<List<SObject>> theList = [FIND: parameter IN Name FIELDS RETURNING Contact(FirstName,LastName), Lead(FirstName, LastName)];
        
        return theList;
    }
    
}