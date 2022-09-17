Feature: Put Example

  Scenario: Put Example - Demo 1
    Given url 'https://reqres.in/api/users/2'
    And request { "name": "Mohammad", "job": "Doctor" }
    When method PUT
    Then status 200
    And print response
    And print responseHeaders
