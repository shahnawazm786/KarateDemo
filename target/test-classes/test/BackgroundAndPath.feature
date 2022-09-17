Feature: Background and Path examples

  Background: 
    * url 'https://reqres.in/api'
    * header Accept = 'application/json'

  Scenario: Background Example
    Given path '/users?page=2'
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    And print responseCookies

  Scenario: Background Example with Param
    Given path '/users'
    And param Page = 2
    When method GET
    Then status 200

  Scenario: Background Example with Param and match
    Given path '/users'
    And param Page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name != null

  Scenario: Background Example with Param and match and assertion
    Given path '/users'
    And param Page = 2
    When method GET
    Then status 200
    And print response
    And match response.data[0].first_name != null
    And assert response.data.length == 6

  Scenario: Background Example with print fields
    Given path '/users'
    And param Page = 2
    When method GET
    Then status 200
    And print response
    And print response.data[0].first_name
    And print response.data.length

  Scenario: Background Example with assert for particular field value
    Given path '/users'
    And param Page = 2
    When method GET
    Then status 200
    And print response
    And assert response.data[0].first_name == 'George'
    And assert response.data.length == 6
