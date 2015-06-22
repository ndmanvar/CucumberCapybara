@selenium
Feature: Pacific Dental Servicies

  Scenario: Verify Dental career oppurtunities page
    Given I am on the Pacific Dental Services homepage
    And I click on "Dentist/Ownership" from the career oppurtunities in the sidebar
    Then I should see "For Dentists" selected in the sidebar

    Then I should see the "For Dentists" header and section in the content
    Then I should see the Learn More button in the header content

    Then I should see the "Career Path" section in the content
    Then I should see the "Compensation" section in the content
