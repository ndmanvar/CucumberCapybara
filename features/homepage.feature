@selenium
Feature: Priceline homepage

  Scenario: Verify Draft City Homepage UI
    Given I am on the priceline homepage

    Then I should see a tab entry for "Hotels"
    Then I should see a tab entry for "Flights"
    Then I should see a tab entry for "Cars"
    Then I should see a tab entry for "Vacation Packages"
    Then I should see a tab entry for "Cruises"

    Then I should see the "Hotels" form

    Then I should see the Express Deals section
