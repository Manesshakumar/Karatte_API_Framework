Feature: Read JSON Info

Scenario:Read JSON Parse

* def jsonObject = 
"""
[
{
	"name" : "Tom",
	"city" : "Bangalore",
	"age"  : 25
},
{
	"name" : "Peter",
	"city" : "LA",
	"age"  : 35
}
]
"""
* print jsonObject
* print jsonObject[0].name + " " + jsonObject[0].city + " " +jsonObject[0].age






Scenario:
complex json reader


* def complexjsonObject = 
"""
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25,
  "address": {
    "streetAddress": "21 2nd Street",
    "city": "New York",
    "state": "NY",
    "postalCode": 10021
  },
  "phoneNumbers": [
    {
      "type": "home",
      "number": "212 555-1234"
    },
    {
      "type": "fax",
      "number": "646 555-4567"
    }
  ]
}
"""
* print complexjsonObject
* print complexjsonObject.firstName
* print complexjsonObject.address.state
* print complexjsonObject.phoneNumbers[0].type + " " + complexjsonObject.phoneNumbers[0].number