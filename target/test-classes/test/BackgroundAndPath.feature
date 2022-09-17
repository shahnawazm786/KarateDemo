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
 