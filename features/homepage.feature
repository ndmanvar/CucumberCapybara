@selenium
Feature: BeachBody homepage

  Scenario: Verify homepage loads properly
    Given I am on beachbody homepage
    Then I should see the slideshow
    Then I should see the toolbar header
