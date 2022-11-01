Feature: Tests with injected values

  Scenario: Append
    When "foo" and "bar" are appended
    Then the result is "foobar"

  Scenario: Addition
    When 20 and 30 are added
    Then the result is 50
