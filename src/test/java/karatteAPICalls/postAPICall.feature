

Feature: Post call - Creating User
  

  
  Background: Creating New User
  * def request_headers = {Connection: 'Keep-Alive', Accept-Encoding : 'gzip, deflate, br',User-Agent:'PostmanRuntime/7.29.0'}
  * url 'https://reqres.in'
  * def requestPayload =
  """
  {
    "name": "Henry Patel",
    "job": "leader"
}
  """
  
Scenario: Create a user with the given data
Given path '/api/users'	
And request requestPayload
When method post
Then status 201
* print response


