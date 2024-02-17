Feature: Delete API CALL 



Scenario: To get the User information Path Parameter
Given url 'https://reqres.in/api/users'
And path '2'
When method Delete
Then status 204
* print response