@selenium
Feature: DSC

  Scenario: Verify toolbar loads properly
    Given I am on Dollar Shave Club homepage
    Then I should see the "menu" link in the toolbar
    Then I should see the "our blades" link in the toolbar
    Then I should see the "our products" link in the toolbar
    Then I should see the "how it works" link in the toolbar
