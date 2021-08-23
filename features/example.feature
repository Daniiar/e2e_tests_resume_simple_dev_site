Feature: Test cucumber setup
  Scenario: Search for something on google
    Given I visit "https://www.google.com"
    And I can enter "Who is Nicola Tesla?" into search field
    Then I press enter of search field
    And I see text "wikipedia.org"
    And I see text "Serbian-American engineer and physicist"
