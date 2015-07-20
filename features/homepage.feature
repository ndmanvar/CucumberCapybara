@selenium
Feature: One Login homepage

  Scenario: Verify homepage loads properly
    Given I am on one login homepage
    Then I should see the slideshow
    Then I should see the toolbar header
