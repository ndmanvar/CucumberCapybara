@selenium
Feature: DSC

  Scenario: Do It Feature Button
    Given I am on Dollar Shave Club homepage
    And I click the Do It button
    Then I should see "The Humble Twin" product header
    Then I should see "The 4X" product header
    Then I should see "The Executive" product header

