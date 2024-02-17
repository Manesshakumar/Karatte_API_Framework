
Feature: Put call 
  

  
  Background: Creating New User
  * def request_headers = {Connection: 'Keep-Alive', Accept-Encoding : 'gzip, deflate, br',User-Agent:'PostmanRuntime/7.29.0'}
  * url 'https://reqres.in'
  * def requestPayload =
  """
  {
    "name": "morpheus",
    "job": "zion resident 100"
}
  """
  
Scenario: Update a user with the given data
Given path '/api/users/1'	
And request requestPayload
When method put
Then status 200
* print response


Scenario: Get call
Given path '/api/users/1'	
When method GET
Then status 200
* print response