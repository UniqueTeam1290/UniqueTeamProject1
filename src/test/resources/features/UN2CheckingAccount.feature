Feature: This feature is to test new Checking Account functionalities

  Developer -> Chris
  Tester -> Amy
  Reviewed by -> Mr. X

  Background:
    Given user opens "http://3.129.60.236:8080/bank/login"
    And user is on login page
    When user enters username "bee@gmail.com" and password "AsdZxc123"
    And click on login button
    Then verify user is navigated to the homepage

  Scenario: Verify available options under Checking section
    When user clicks on "Checking" dropdown
    Then verify "View Checking" and "New Checking" listed

  Scenario: Verify user is redirected to new page after clicking on New Checking
    When user clicks on "Checking" dropdown
    And  select "New Checking"
    Then user should be redirected to "http://3.129.60.236:8080/bank/account/checking-add"

  Scenario: New Checking Account header verification
    When user is on the New Checking page
    Then header should be "New Checking Account"

  Scenario: Checking Account Type categories verification
    When user is on New Checking page
    Then user should be able to see "Select Checking Account Type"
    And unchecked by default categories "Standard Checking" and "Interest Checking"

  Scenario: Select Account Ownership categories verification
    When user is on New Checking page
    Then user should be able to see "Select Account Ownership"
    And unchecked by default categories "Individual" and "Joint"

  Scenario: Account Name element verification
    When user is New Checking page
    Then user should be able to see line "Account Name"
    And user should be able to input any alphanumeric and special characters

  Scenario: Initial Deposit Amount element verification
    When user is New Checking page
    Then user should be able to see line "Initial Deposit Amount"
    And user should be able to input amount to be deposited

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

