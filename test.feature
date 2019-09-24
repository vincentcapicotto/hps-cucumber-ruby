@sprint-3
Feature: Support internationalisation
    "**In order to** practice my use of greetings in several languages"
    "**As a** polyglot coffee lover"
    "**I can** select the language on the coffee machine"

  @priority-medium @test truc
  Scenario Outline: Messages are based on language
    When I start the coffee machine using language "<language>"
    Then message "<ready_message>" should be displayed

    Examples:
      | Dataset | parameter_1 | parameter_2 | parameter_3 | parameter_4 | parameter_5 | parameter_6 |
      | name 1 | value 1 1 | value 2 1 | value 3 1 | value 4 1 | value 5 1 | value 6 1 |
      | name 2 | value 1 2 | value 2 2 | value 3 2 | value 4 2 | value 5 2 | value 6 2 |
      | name 3 | value 1 3 | value 2 3 | value 3 3 | value 4 3 | value 5 3 | value 6 3 |
      | name 4 | value 1 4 | value 2 4 | value 3 4 | value 4 4 | value 5 4 | value 6 4 |
      | name 5 | value 1 5 | value 2 5 | value 3 5 | value 4 5 | value 5 5 | value 6 5 |
      | name 6 | value 1 6 | value 2 6 | value 3 6 | value 4 6 | value 5 6 | value 6 6 |
      | name 7 | value 1 7 | value 2 7 | value 3 7 | value 4 7 | value 5 7 | value 6 7 |
      | name 8 | value 1 8 | value 2 8 | value 3 8 | value 4 8 | value 5 8 | value 6 8 |
      | name 9 | value 1 9 | value 2 9 | value 3 9 | value 4 9 | value 5 9 | value 6 9 |
      | name 10 | value 1 10 | value 2 10 | value 3 10 | value 4 10 | value 5 10 | value 6 10 |
      | name 11 | value 1 11 | value 2 11 | value 3 11 | value 4 11 | value 5 11 | value 6 11 |
      | name 12 | value 1 12 | value 2 12 | value 3 12 | value 4 12 | value 5 12 | value 6 12 |
      | name 13 | value 1 13 | value 2 13 | value 3 13 | value 4 13 | value 5 13 | value 6 13 |
      | name 14 | value 1 14 | value 2 14 | value 3 14 | value 4 14 | value 5 14 | value 6 14 |
      | name 15 | value 1 15 | value 2 15 | value 3 15 | value 4 15 | value 5 15 | value 6 15 |

  @priority-medium
  Scenario: No messages are displayed when machine is shut down
    Given the coffee machine is started
    When I shutdown the coffee machine
    Then message "" should be displayed

  @priority-medium @test truc
  Scenario Outline: Messages are based on language copysqd qsd sqd qsd qsd
    When I start the coffee machine using language "<language>"
    Then message "<ready_message>" should be displayed

    Examples:
      | language | ready_message |
      | en | Ready |
      | fr | Pret |
