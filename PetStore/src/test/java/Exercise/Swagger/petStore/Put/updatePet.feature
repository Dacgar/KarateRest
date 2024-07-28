Feature: Update pet exist

  Background:
    * url 'https://petstore.swagger.io/'
    * request {"id": "#(id)","name": "#(name)","status": "#(status)"}

  Scenario Outline: Update pet exist

    Given path 'v2/pet'
    When method Put
    Then status 200
    * def responseUpdate = response.Update
    * print response
    Examples:
      | id | name | status |
      | 20 | Dogo | sold   |