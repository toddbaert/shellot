Feature: Tests with injected values

  Scenario: Append
    Given "foo" and "bar" are appended
    Then the result is "foobar"

  Scenario: Addition
    When 20 and 30 are added
    Then the result is 50

  Scenario: Addition
    When 1 is multiplied by 2 
    And the product is multiplied by 4
    Then the product is 8