Feature: Search pet by Status

  Background:
    * url 'https://petstore.swagger.io/'

  Scenario: get Search pet by Status

    * def status = 'sold'

    Given path 'v2/pet/findByStatus'
    And param status = status
    When method Get
    Then status 200
    And def responseList = $response
    And def filteredResponse = responseList.find(x => x.id == 20)
    And print filteredResponse