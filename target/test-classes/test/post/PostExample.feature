Feature: Post Example

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  #Simple post request
  Scenario: Post Data - Demo 1
    Given url 'https://reqres.in/api/users'
    And request {"name": "Mohammad","job": "leader"}
    When method POST
    Then status 201

  #Simple post request
  Scenario: Post Data - Demo 2
    Given url 'https://reqres.in/api/users'
    And request {"name": "Mohammad","job": "teacher"}
    When method POST
    Then status 201
    And print response

  #Background post request
  Scenario: Post Data - Demo 3
    Given path '/users'
    And request {"name": "Mohammad","job": "teacher"}
    When method POST
    Then status 201
    And print response
    
#Background and Assertion with post request
  Scenario: Post Data - Demo 3
    Given path '/users'
    And request {"name": "Mohammad","job": "teacher"}
    When method POST
    Then status 201
    And print response