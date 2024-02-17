Feature:
Passing Request Header 

Scenario:
GET Call with Request Header

* def request_headers = {Connection: 'Keep-Alive', Accept-Encoding : 'gzip, deflate, br'}
Given url 'https://reqres.in/api/users'
And path '2'
When method GET
Then status 200
* print response