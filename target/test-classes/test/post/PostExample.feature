Feature: Post Example

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response1.json")

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
  Scenario: Post Data - Demo 4
    Given path '/users'
    And request {"name": "Mohammad","job": "teacher"}
    When method POST
    Then status 201
    And match response == {"name": "Mohammad","job": "teacher","id": "583","createdAt": "2022-09-17T03:40:32.355Z"}
    And print response

  #Background and Assertion with post request igrone and string
  Scenario: Post Data - Demo 5
    Given path '/users'
    And request {"name": "Mohammad","job": "teacher"}
    When method POST
    Then status 201
    And match response == {"name": "Mohammad","job": "teacher","id": "#string","createdAt": "#ignore"}
    And print response

  #Post with read response from file
  Scenario: Post Data - Demo 5
    Given path '/users'
    And request {"name": "Mohammad","job": "teacher"}
    When method POST
    Then status 201
    And match response == expectedOutput
    And print response
