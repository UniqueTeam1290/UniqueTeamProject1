Feature: This feature is to test if the User has the ability to view all my Savings bank account
  so that I can manage my accounts and see account balance and transactions.

  Developer - Karishma
  Tester - Alexandr

  Reviewed By - Alexandr


  Background:
    Given user opens website
    And user is on login page
    When user enters username "username" and password "password"
    And click on login button
    Then verify user is navigated to homepage
    When user is on the homepage
    And user clicks on Saving->View Saving under "Banking Accounts"



  Scenario: Verify if User is able to view Transaction table
    Then user should be able to view the Transactions table
    And  user closes the browser

  Scenario Outline: Verify if User is able to view "Date" header field in Transactions table
    Then verify user should be able to view "Date" in YYYY-MM-DD format and "Time" under "<<Date>>" header field
    And user closes the browser

    Examples:
    Date
    2021-01-26  01:29
    2018-06-17  00:14

  Scenario Outline:: Verify if User is able to view "Category" header field in Transactions table
    Then verify user should be able to view "<<Category>>" header field
    And user closes the browser

    Examples:
    Category
    Income
    Misc

  Scenario Outline: Verify if User is able to view "Description" header field in Transactions table
    Then verify user should be able to view Transaction ID and Type of Transaction under "<<Description>>" header field
    And user closes the browser

    Examples:
    Description
    845320101 (DPT) - Online Deposit
    845320086 (DPT) - Deposit
    845320102 (WTH) - Online Withdrawl

  Scenario Outline: Verify if User is able to view "Amount" header field in Transactions table
    Then verify user should be able to view the amount for each transaction under "<<Amount>>" header field
    And user closes the browser

    Examples:
    Amount
    $250
    $1250


  Scenario Outline: Verify if User is able to view "Balance" header field in Transactions table
    Then verify user is able to view the balance amount after each transaction under "<<Balance>>" header field
    And user closes the browser

    Examples:
    Amount
    $250
    $1250

  Scenario: Verify if User is able to view any records in the Transactions table without any transactions
    Then user should be able to view the Transactions table without any records
    And  user closes the browser


  Scenario: Verify if user is able to view toggle ON/OFF buttons for all the saving accounts
    Then  user should be able to view toggle ON/OFF buttons for all the saving accounts
    And  user closes the browser

  Scenario: Verify if user is able to view transaction history displayed for the activated Saving account, if there is a single account
    When  user should be able to view the transaction history of the Saving account with toggle ON
    And user closes the browser

  Scenario: Verify if user is able to switch the toggle ON for other saving account, if there are multiple accounts
    When  user should be able to toggle ON for Saving account
    Then  user should be able to view the transaction history of the Saving account with toggle ON
    And   user closes the browser