Feature: Create new Savings bank account and process payment from user’s preferred account

  Developer - karishma
  Tester - Negus
  Reviewed By - Gia

  Background:
    Given user opens “http://3.129.60.236:8080/bank/login”
    And user is on login page
    When user enters “<username>” and “<password>”
    And clicks on sign in button
    Then verify user is navigated to homepage

  Scenario: User is logged in
    Given homepage has left menu column
    And left column has menu section “BANKING ACCOUNTS”
    Then user should see Saving field

  Scenario: User clicks on Savings field
    Then user must see dropdown with two options: View Savings and New Savings
    And user clicks on New savings option
    Then user must be redirected to “http://dbankdemo.com/account/savings-add” window

  Scenario: The saving page as been loaded
    Given the new page must display a header “New Savings Account”
    Then a header “New Savings Account” must display label “Select Savings Account Type”
    And “Select Savings Account Type” label must have two radio button options: Savings and Money Market
    Given radio button options: Savings and Money Market under “Select Savings Account Type” label
    Then Savings and Money Market buttons must be unchecked

  Scenario: User selects type of ownership they would be using
    Given a header “New Savings Account” must display label “Select Account Ownership”
    And a header “New Savings Account” must display label “Select Account Ownership”
    And “Select Account Ownership” label must have two radio button options: Individual and Joint
    Given radio button options: Individual and Joint under “Select Account Ownership” label
    Then Individual and Joint buttons must be unchecked

  Scenario: User types in Account name
    Given user must see an Input filed “Account Name”
    When user types something into an Input filed “Account Name”
    And it must accept alphanumeric and special characters

  Scenario: User types in Initial Deposit
    Given user must see an Input filed “Initial Deposit”
    And “Initial Deposit” filed must accept numeric whole or decimal values inputs from user
    Then user should see “Submit” button and “Reset” button

  Scenario: User clicks on Submit
    Given user sees “Submit” button
    When clicking on “Submit” button should successfully create an account
    Then user must be redirected to page to view saving account

  Scenario: User clicks on Submit
    Given user sees “Reset” button
    When clicking on “Reset” button
    Then all filled values should be reset to default state