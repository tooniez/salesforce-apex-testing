# Salesforce Apex Common Test Suite

This repository houses a collection of Apex test classes, designed to validate the functionality and reliability of a Salesforce application. We use the `sfdx-lwc-jest` library to run our unit tests.

## Common Test Classes

The common test classes included in this directory under `scripts/apex/`are designed to test various aspects of the Salesforce application. They include:

### Unit Tests

1. **Object Test Classes**: These test classes are used to verify the behavior of custom objects in the application. They ensure that all object fields and methods function as expected.
2. **Trigger Test Classes**: These test classes are used to test the triggers in the application. They ensure that the triggers execute correctly under various conditions.
3. **Controller Test Classes**: These test classes are used to test the controllers in the application. They ensure that the controllers correctly manage the flow of data between the views and the model.
4. **Batch Job Test Classes**: These test classes are used to test batch jobs in the application. They ensure that the batch jobs correctly process large volumes of data.
5. **Utility Test Classes**: These test classes are used to test various utility classes in the application. They ensure that the utility classes correctly perform their intended functions.

### E2E User Flows

1. **User Flow Test Classes 🚶‍♂️**: These classes simulate a user's journey through the application, testing end-to-end functionality. They include:
    - User Registration Flow Test Class
    - User Login Flow Test Class
    - Data Entry Flow Test Class
    - Data Retrieval Flow Test Class
    - User Profile Update Flow Test Class
    - Data Update Flow Test Class
    - Data Deletion Flow Test Class
    - Search Functionality Flow Test Class

## Configure

The `sfdx-project.json` file contains configuration information for your project. 

```json
{
  "packageDirectories": [
    {
      "path": "force-app",
      "default": true
    }
  ],
  "name": "salesforce-apex-testing",
  "namespace": "",
  "sfdcLoginUrl": "https://login.salesforce.com",
  "sourceApiVersion": "58.0"
}
```

### Vscode

Includes a `.vscode`extension and debugging for Salesforce development in VS Code.


## Usage

1. Clone this repository
2. Install dependencies with `npm install`
3. Run Apex unit tests with `npm run test:unit`


## More Info

See [Salesforce DX Project Configuration](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_ws_config.htm) in the _Salesforce DX Developer Guide_ for details about this file.
Do you want to deploy a set of changes, or create a self-contained application? Choose a [development model](https://developer.salesforce.com/tools/vscode/en/user-guide/development-models).

- [Salesforce Extensions Documentation](https://developer.salesforce.com/tools/vscode/)
- [Salesforce CLI Setup Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_setup.meta/sfdx_setup/sfdx_setup_intro.htm)
- [Salesforce DX Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.sfdx_dev.meta/sfdx_dev/sfdx_dev_intro.htm)
- [Salesforce CLI Command Reference](https://developer.salesforce.com/docs/atlas.en-us.sfdx_cli_reference.meta/sfdx_cli_reference/cli_reference.htm)

