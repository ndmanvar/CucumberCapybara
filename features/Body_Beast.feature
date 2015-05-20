@selenium
Feature: BeachBody Body Beast

  Scenario: Verify Body Beast loads correctly
    Given I am on beachbody homepage
    And I click the "Body Beast" link in the left rail
    Then I should be on the "Body Beast" page

