Feature: This feature is to test if user is able to view all details of his account home page.

  Developer - Alexandr
  Tester - Tetiana
  Reviewed By - Daniel

  Background:
    Given user opens a website
    And user is on login page
    When user enters username "JohnDoe@testemail.com" and password "Password1"
    And click on login button
    Then verify user is navigated to homepage

  Scenario: welcome message
    Then user should validate welcome message

  Scenario: home page display
    Then user should see the home title is displayed

  Scenario: verify banking accounts
    Then user should see banking account title
    And user should see checking title
    And user should see savings title
    And user should see external title

  Scenario: verify transactions/transfers
    Then user should see transactions/transfer title
    And user should see deposit title
    And user should see withdraw title
    And user should see transfer between acc title
    And user should see Visa Direct Transfer title









