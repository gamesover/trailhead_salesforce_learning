public with sharing class ContactSearch {
    public static List<Contact> searchForContacts(String lastName, String postCode) {
    	List<Contact> contacts = [Select ID, Name From Contact Where LastName = :lastName and MailingPostalCode = :postCode];
    	
		
		return contacts;
    }
}