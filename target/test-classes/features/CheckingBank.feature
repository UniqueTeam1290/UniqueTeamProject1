Feature: This feature is to test if user to create a new Checking bank.

  Developer - Alexandr
  Tester - Tetiana
  Reviewed By - Daniel


  Background:
    Given user opens wesite
    And user is on login page
    When user enters username "JohnDoe@testemail.com" and password "Password1"
    And click on login button
    Then verify user is navigated to homepage

  Scenario: Verify Checking field under Banking Accounts section is displayed
    When user is clicking on ‘Checking’
    Then dropdown should be displayed with following options: View Checking, New Checking


    When user is Clicking on ‘New Checking’ option
    Then user should be redirected to “http://dbankdemo.com/account/checking-add”


