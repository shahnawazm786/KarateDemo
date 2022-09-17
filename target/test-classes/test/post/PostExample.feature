Feature: Post Example

  Scenario: Post Data - Demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name": "Mohammad","job": "leader"}
    When method POST
    Then status 201
    
      Scenario: Post Data - Demo 2
    Given url 'https://reqres.in/api/users'
    And request {"name": "Mohammad","job": "teacher"}
    When method POST
    Then status 201
    And print response
