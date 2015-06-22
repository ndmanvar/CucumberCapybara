@selenium
Feature: Priceline Hotels

  Scenario: Search for Hotels
    Given I am on the priceline homepage
    And I type "San Francisco, CA" into the "Where are you going" field in the "Hotels" tab
    And I click on the first suggestion
    And I click on the check in field in the "Hotels" tab
    And I click on "28" of "June" from the datepicker
    And I click on "30" of "June" from the datepicker
    And I click on the Search Hotels button in the "Hotels" tab
    Then I should see a hotel entry for "Holiday Inn Express"

