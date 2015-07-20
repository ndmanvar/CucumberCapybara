@selenium
Feature: One Login login page

  Scenario: Verify user can login
    Given I am on one login homepage
    And I click the login button in the toolbar

    And I fill out the "email" field with "testUsername"
    And I fill out the "password" field with "testPassword"

    And I click on the login button

    # TO DO: verify
