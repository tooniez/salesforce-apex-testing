// Data Entry Test Class
@isTest
public class DataEntryTestClass {
    @isTest static void testDataEntryFlow() {
        // Simulate data entry
        Account newAccount = new Account(Name='Test Account');
        insert newAccount;

        // Retrieve the inserted account
        Account retrievedAccount = [SELECT Name FROM Account WHERE Id = :newAccount.Id];

        // Assert that the account was correctly inserted
        System.assertEquals('Test Account', retrievedAccount.Name);
    }
}

// Data Retrieval Test Class
@isTest
public class DataRetrievalTestClass {
    @isTest static void testDataRetrievalFlow() {
        // Insert a new account
        Account newAccount = new Account(Name='Test Account');
        insert newAccount;

        // Simulate data retrieval
        Account retrievedAccount = [SELECT Name FROM Account WHERE Id = :newAccount.Id];

        // Assert that the account was correctly retrieved
        System.assertEquals('Test Account', retrievedAccount.Name);
    }
}


//Data Update Test Class
@isTest
public class DataUpdateTestClass {
    @isTest static void testDataUpdateFlow() {
        // Insert a new account
        Account newAccount = new Account(Name='Test Account');
        insert newAccount;

        // Simulate data update
        newAccount.Name = 'Updated Test Account';
        update newAccount;

        // Retrieve the updated account
        Account updatedAccount = [SELECT Name FROM Account WHERE Id = :newAccount.Id];

        // Assert that the account was correctly updated
        System.assertEquals('Updated Test Account', updatedAccount.Name);
    }
}
