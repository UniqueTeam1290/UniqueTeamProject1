Feature: This feature is to test new Checking Account functionalities

  Developer -> Chris
  Tester -> Amy
  Reviewed by -> Mr. X

  Background:
    Given user open website
    Then verify user is on the Login page
    When user logs in
    Then verify user is navigated to Home Page

  Scenario Outline: Verify available options under Checking section
    When user clicks on "checking" dropdown
    Then verify "<checkingCategories>" are visible
    Examples:
      |checkingCategories |
      | view-checking     |
      | new-checking      |

  Scenario: Verify user is redirected to new page after clicking on New Checking
    When user clicks on "checking" dropdown
    And  select "new-checking"
    Then user should be redirected to Create Checking page


  Scenario Outline: Checking Account Type categories verification
    Given user clicks on "checking" dropdown
    When  select "new-checking"
    Then user is on New Checking page
    And  user should be able to see Select Checking Account Type
    Then Verify "<CheckingAccountType>" is visible

    Examples:
      | CheckingAccountType   |
      | Standard Checking     |
      | Interest Checking     |


  Scenario Outline: Select Account Ownership categories verification
    When user is on New Checking page
    Then user should be able to see "Select Account Ownership"
    And  verify "<SelectAccountOwnership>" is "<visible>"

    Examples:
      | SelectAccountOwnership  | visible |
      | Individual              | visible |
      | Joint                   | visible |


  Scenario: Account Name element verification
    When user is New Checking page
    Then user should be able to see line "Account Name"
    And user should be able to input any alphanumeric and special characters

  Scenario Outline: Initial Deposit Amount element verification
    When user is New Checking page
    Then user should be able to see line "Initial Deposit Amount"
    And user should be able to input "<amount>" to be deposited

    Examples:
      | amount  |
      | 25      |
      | 100     |

  Scenario: Create new account verification
    When user clicks on "Submit" button
    Then new account should be created
    And user should be redirected to "View Checking Account" page

  Scenario Outline: Reset button verification
    When user clicks on "Reset" button
    Then all "<fields>" should be reset to "<default values>"
    Examples:
      | fields                 | default values |
      | Standard Checking      | unchecked      |
      | Interest Checking      | unchecked      |
      | Individual             | unchecked      |
      | Joint                  | unchecked      |
      | Account Name           | empty          |
      | Initial Deposit Amount | empty          |

  Scenario Outline: Application fill out verification
    When user miss to fill out any of the "<fields>"
    Then user should be able to see following "<error message>"
    Examples:
      | fields                 | error message                        |
      | Standard Checking      | "Please select one of these options" |
      | Interest Checking      | "Please select one of these options" |
      | Individual             | "Please fill out this field"         |
      | Joint                  | "Please fill out this field"         |
      | Account Name           | "Please fill out this field"         |
      | Initial Deposit Amount | "Please fill out this field"         |

  Scenario Outline: Initial Deposit format verification
    When user provides "<amount>" to be deposited that is not whole numbers or decimals
    Then "<error message>" should be displayed
    Examples:
      | amount | error message                   |
      | @#$    | "Please match requested format" |
      | asd    | "Please match requested format" |
      | {}     | "Please match requested format" |

  Scenario Outline: Initial Deposit amount verification
    When user provides "<amount>" to be deposited that is less then $25.00
    Then "<error message>" should be displayed
    Examples:
      | amount | error message                                                                                                                 |
      | 24.00  | "The initial deposit ($0.00) entered does not meet the minimum amount ($25.00) required. Please enter a valid deposit amount. |
      | 15     | "The initial deposit ($0.00) entered does not meet the minimum amount ($25.00) required. Please enter a valid deposit amount. |
      | 0      | "The initial deposit ($0.00) entered does not meet the minimum amount ($25.00) required. Please enter a valid deposit amount. |
