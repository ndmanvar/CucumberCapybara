@selenium
Feature: DSC

  Scenario: 1
    Given I am on Dollar Shave Club homepage
    Then I should see the "menu" link in the toolbar
    Then I should see the "our blades" link in the toolbar
    Then I should see the "our products" link in the toolbar
    Then I should see the "how it works" link in the toolbar

    @asdf
  Scenario: 2
    Given I am on Dollar Shave Club homepage
    Then I should see the "menu" link in the toolbar
    Then I should see the "our blades" link in the toolbar
    Then I should see the "our products" link in the toolbar
    Then I should see the "how it works" link in the toolbar

  @asdff
  Scenario Outline: eating
      Given there are <start> cucumbers
      When I eat <eat> cucumbers
      Then I should have <left> cucumbers

      Examples:
        | start | eat | left |
        |  12   |  5  |  7   |
        |  20   |  5  |  15  |



