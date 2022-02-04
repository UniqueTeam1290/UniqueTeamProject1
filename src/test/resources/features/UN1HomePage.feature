Feature: This feature is to test if user is able to view all details of his account home page.

  Developer - Alexandr
  Tester - Tetiana
  Reviewed By - Daniel

  Background:
    Given user opens "http://3.129.60.236:8080/bank/login"
    And user is on login page
    When user enters username "username" and password "password"
    And click on login button
    Then verify user is navigated to the homepage


  Scenario Outline: Verify user is able to view Welcome message
    When user checks right top header
    Then user should be able to see "<welcomeMessage>"

    Examples:

      | welcomeMessage |
      | Welcome Amy    |

  Scenario: Verify Home title
    When user is checking panel on the left
    Then user should be able to see "Home" title

  Scenario: Verify Banking Accounts title
    When user is checking panel on the left
    Then user should be able to see "BANKING ACCOUNTS" title is present


  Scenario: Verify Checking category under Banking Accounts
    When user is checking panel on the left
    Then user should be able to see "Checking" category under Banking Accounts

  Scenario: Verify Savings category under Banking Accounts
    When user is checking panel on the left
    Then user should be able to see "Savings" category under Banking Accounts

  Scenario: Verify External category under Banking Accounts
    When user is checking panel on the left
    Then user should be able to see "External" category under Banking Accounts


  Scenario: Verify Transactions/Transfers title and categories
    When user is checking panel on the left below Banking Accounts
    Then verify "TRANSACTIONS/ TRANSFERS" title is present
    And user should be able to see "Deposit" category
    And user should be able to see "Withdraw" category
    And user should be able to see "Transfer Between Accounts" category
    And user should be able to see "VISA Direct Transfer" category









