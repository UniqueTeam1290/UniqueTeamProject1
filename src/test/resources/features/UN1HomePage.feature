Feature: This feature is to test functionality related to Home Page

  Developer
  Tester

  Reviewed by

  Background:
    Given user open website
    Then verify user is on the Login page
    When user logs in
    Then verify user is navigated to Home Page


  Scenario: Verify user is able to see Welcome message
    Then verify welcome message displayed on right top header

  Scenario: Verify Home title
    Then user should see home title displayed

  Scenario: Verify Checking category
    Then user should see Checking category on Home page

  Scenario: Verify Savings category
    Then user should see Savings category on Home page

  Scenario: Verify External category under Banking Accounts
    Then user should see External category on Home page

  Scenario: Verify Transactions/Transfers title and categories
    Then user should see TRANSACTIONS title on Home page
    And user should see Deposit category
    And user should see Withdraw category
    And user should see Transfer Between Accounts category
    And user should  see VISA Direct Transfer category
