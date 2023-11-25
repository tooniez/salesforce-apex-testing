@isTest
public class ObjectTestClass {
    @isTest static void testCustomObject() {
        // Create a new custom object
        CustomObject__c obj = new CustomObject__c(Name='Test Object');

        // Insert the custom object
        insert obj;

        // Retrieve the inserted object
        CustomObject__c retrievedObj = [SELECT Name FROM CustomObject__c WHERE Id = :obj.Id];

        // Assert that the object was correctly inserted
        System.assertEquals('Test Object', retrievedObj.Name);
    }
}