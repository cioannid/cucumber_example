Feature: Cash Withdrawal
  Scenario Outline: Successful withdrawal from an account in credit
    Given my account has been credited with <Balance>
    When I withdraw <Amount>
    Then <Received> should be dispensed
    And the balance of my account should be <Remaining>

  Examples:
    |Balance|Amount|Received|Remaining|
    |$100   |$20   |$20     |$80      |
    |$100   |$40   |$40     |$60      |
    |$100   |$60   |$60     |$40      |
