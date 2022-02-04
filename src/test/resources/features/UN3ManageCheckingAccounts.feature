Feature: This feature is to test if user have the ability to view
  his Checking bank account and he can manage it.

  Developer - Alexandr
  Tester - Tetiana
  Reviewed By - Daniel

  Background:
    Given user opens "http://3.129.60.236:8080/bank/login"
    And user is on login page
    When user enters username "username" and password "password"
    And click on login button
    Then verify user is navigated to the homepage

#    =========================

  Scenario: Verify “Transactions” table is displayed
    When  user is on View Checking page
    Then verify “Transactions” table is displayed

  Scenario: Verify “Date” header is displayed under “Transactions” table
    When  user is on View Checking page
    Then verify “Date” is displayed

  Scenario: Verify “Category” header is displayed under “Transactions” table
    When  user is on View Checking page
    Then verify “Category” is displayed

  Scenario: Verify “Description” header is displayed under “Transactions” table
    When  user is on View Checking page
    Then verify “Description” is displayed

  Scenario: Verify “Amount” header is displayed under “Transactions” table
    When  user is on View Checking page
    Then verify “Amount” is displayed

  Scenario: Verify “Balance” header is displayed under “Transactions” table
    When  user is on View Checking page
    Then verify “Balance” is displayed

#================================

  Scenario: Verify that only 1 checking account is Activated
    When  user is on View Checking page
    Then  ON/OFF toggle button is displayed on each Checking account
    And   only one of the accounts is Activated

  Scenario: Verify that transaction history is displayed
    When  user is on View Checking page
    Then  verify that history of the Activated account is displayed