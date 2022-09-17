Feature: Post Example

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response2.json")
    
    Scenario: Read and Write from the Json file
    Given path '/users'
    And def requestBody = read('request1.json')
    And request requestBody
     When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response