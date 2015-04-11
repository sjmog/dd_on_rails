Feature: Roll dice
  As a player
  So I can randomise some stuff
  I want to roll some dice

  Before
    Given I am on the "/dice" page

  Scenario: Rolling a d20
    Given I am on the "/dice" page
    And any die will randomly roll a 2
    When I click "roll d20"
    Then I should see "d20_result: 2"
    And I should see no other dice results than d20
    
  Scenario: Rolling a d12
    Given I am on the "/dice" page
    And any die will randomly roll a 2
    When I click "roll d12"
    Then I should see "d12_result: 2"
    And I should see no other dice results than d12
    
  Scenario: Rolling a d10
    Given I am on the "/dice" page
    And any die will randomly roll a 2
    When I click "roll d10"
    Then I should see "d10_result: 2"
    And I should see no other dice results than d10

  Scenario: Rolling a d8
    Given I am on the "/dice" page
    And any die will randomly roll a 2
    When I click "roll d8"
    Then I should see "d8_result: 2"
    And I should see no other dice results than d8
    
  Scenario: Rolling a d6
    Given I am on the "/dice" page
    And any die will randomly roll a 2
    When I click "roll d6"
    Then I should see "d6_result: 2"
    And I should see no other dice results than d6
    
  Scenario: Rolling a d4
    Given I am on the "/dice" page
    And any die will randomly roll a 2
    When I click "roll d4"
    Then I should see "d4_result: 2"
    And I should see no other dice results than d4
    
  Scenario: Rolling a d3
    Given I am on the "/dice" page
    And any die will randomly roll a 2
    When I click "roll d3"
    Then I should see "d3_result: 2"
    And I should see no other dice results than d3
    
  Scenario: Rolling a d2
    Given I am on the "/dice" page
    And any die will randomly roll a 2
    When I click "roll d2"
    Then I should see "d2_result: 2"
    And I should see no other dice results than d2