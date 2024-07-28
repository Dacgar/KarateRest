Feature: Pet Store Journey

  Background:
    * url 'https://petstore.swagger.io/'

  Scenario: Create a new pet
    * def petData = { "id": 20, "name": "Diego", "status": "pull" }
    Given path 'v2/pet'
    And request petData
    When method Post
    Then status 200
    * def petId = response.id
    * print response
    * karate.call('classpath:Exercise/Journey/Crud.feature@searchPetById', { petId: petId })

  Scenario: searchPetById
    * def petId = karate.get('petId')
    Given path 'v2/pet/', 20
    When method Get
    Then status 200
    * def responseId = response.id
    * print response
    And print 'El ID pet is:', responseId
    * karate.call('classpath:Exercise/Journey/Crud.feature@updatePetExist', { petId: petId })

  Scenario: updatePetExist
    * def petId = karate.get('petId')
    * def updatedPetData = { "id": petId, "name": "Dogo", "status": "sold" }
    Given path 'v2/pet'
    And request updatedPetData
    When method Put
    Then status 200
    * def responseUpdate = response.Update
    * print response
    * karate.call('classpath:Exercise/Journey/Crud.feature@searchPetByStatus', { petId: petId })

  Scenario: searchPetByStatus
    * def petId = karate.get('petId')
    * def status = 'sold'
    Given path 'v2/pet/findByStatus'
    And param status = status
    When method Get
    Then status 200
    And def responseList = $response
    And def filteredResponse = responseList.find(x => x.id == petId)
    And print filteredResponse