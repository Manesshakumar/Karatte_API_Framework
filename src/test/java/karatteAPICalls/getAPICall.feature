
Feature: GET API CALL 



Scenario: To get the User information Path Parameter
Given url 'https://reqres.in/api/users'
And path '2'
When method GET
Then status 200
* print response
* def actresponse = response
And match actresponse.data.id == 2
And match actresponse.data.first_name == 'Janet'
And match actresponse.data.last_name == 'Weaver'


Scenario: To get the User information Query Parameter
* def query = {page:2}
Given url 'https://reqres.in/api/users'
And params query
When method GET
Then status 200
* print response
* def actresponse = response
And match actresponse.total_pages == 2
* def list = actresponse.data.length
* print list




