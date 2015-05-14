@selenium
Feature: BeachBody 21 Day Fix Extreme

  Scenario: Verify 21 Day Fix Extreme loads correctly
    Given I am on beachbody homepage
    And I click the "21 Day Fix Extreme" link in the left rail
    Then I should be on the "21 Day Fix Extreme" page

