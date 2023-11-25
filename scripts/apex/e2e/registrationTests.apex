@isTest
public class UserRegistrationTestClass {
    @isTest static void testUserRegistrationFlow() {
        // Simulate user registration
        User newUser = new User();
        newUser.Username = 'testuser@test.com';
        newUser.Email = 'testuser@test.com';
        newUser.Alias = 'tuser';
        newUser.LastName = 'Test';
        newUser.FirstName = 'User';
        newUser.ProfileId = [SELECT Id FROM Profile WHERE Name='Standard User'].Id;
        newUser.TimeZoneSidKey = 'America/Los_Angeles';
        newUser.LocaleSidKey = 'en_US';
        newUser.EmailEncodingKey = 'UTF-8';
        newUser.LanguageLocaleKey = 'en_US';

        // Insert the new user
        insert newUser;

        // Retrieve the inserted user
        User retrievedUser = [SELECT Username, Email FROM User WHERE Id = :newUser.Id];

        // Assert that the user was correctly registered
        System.assertEquals('testuser@test.com', retrievedUser.Username);
        System.assertEquals('testuser@test.com', retrievedUser.Email);
    }
}