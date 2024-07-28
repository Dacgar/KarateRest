Feature: Create a new pet
#####Scenario Scenario Outline:###
  Background:
    * url 'https://petstore.swagger.io/'

    * request {"id": "#(id)","name": "#(name)","status": "#(status)"}

  Scenario Outline: Create a new pet
    Given path 'v2/pet'
    When method Post
    Then status 200
    * def responseId = response.id
    * print response
    Examples:
      | id | name  | status |
      | 20 | Diego | pull   |