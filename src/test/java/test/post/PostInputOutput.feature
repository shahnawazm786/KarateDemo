Feature: Post Example

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'
    * def expectedOutput = read("response2.json")

  Scenario: Read and Write from the Json file - Demo1
    Given path '/users'
    And def requestBody = read('request1.json')
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

  Scenario: Read and Write from the Json file - Demo2
    Given path '/users'
    And def projectPath = karate.properties['user.dir']
    And print projectPath
    And def filePath = projectPath + '\\src\\test\\java\\data\\request2.json'
    And print filePath
    And def requestBody = filePath
    And request requestBody
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response

     Scenario: Read and Write from the Json file - Demo3
    Given path '/users'
    #And def projectPath = karate.properties['user.dir']
    #And print projectPath
    #And def filePath = projectPath + '\\src\\test\\java\\data\\request2.json'
    #And print filePath
    And def requestBody = read('request1.json')
    And request requestBody
    And set requestBody.job = 'Engineer'
    When method POST
    Then status 201
    And match response == expectedOutput
    And match $ == expectedOutput
    And print response