Feature: Rest API Test

Scenario: First Simple API Test
Given url 'https://reqres.in/api/users?page=2'
When method GET
Then status 200