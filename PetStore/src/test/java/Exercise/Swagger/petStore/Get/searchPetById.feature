Feature: Search pet by ID

  Background:
    * url 'https://petstore.swagger.io/'

  Scenario: get Search pet by ID

    * def petId = 20

    Given path 'v2/pet/', petId
    When method Get
    Then status 200
    * def responseId = response.id
    * print response
    And print 'El ID pet is:', responseId