Feature: Serve coffee
    As a coffee lover
    I can get coffee from the machine
    So I can enjoy the rest of the day


    ppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppppp

  @2_01
  Scenario: 3.01 - A User logs in successfully
    Given I am on the Welcome  sd qdq sdscreen
    When I login using valid details:
         | username                       | password |
         | qaautomation2@sharklasers.com   | password |
    Then I see a message which says welcome "Qa" "Automation2"
    And I am not logged in  "bbbbbbbbbbbb" "bbbbbbbbbbbbbbbbb"
      """
      aaaaaaaaaaaaaaaaaaaaaaaa

      """

  @2_02
  Scenario: 3.02 - User attempts to login with invalid email address
    Given I am on the Welcome  sd qdq sdscreen
    When I login using invalid details:
         | username                       | password |
         | invalid@sharklasers.com        | password |
    Then an invalid login error message is displayed

  Scenario: Full grounds does not block coffee (1)
    Given the coffee machine is started
    And I handle everything except the grounds
    When I take "50" coffees
    Then message "Empty grounds" should be displayed
    And coffee should be served

  Scenario: Simple use
    Given the coffee machine is started
    When I take a coffee
    Then coffee should be served
