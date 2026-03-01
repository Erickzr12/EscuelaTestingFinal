Feature: Automatizar el backend de Pet Store

  Background:
    * url 'https://petstore.swagger.io/v2'

  @TEST-1
  Scenario: Verificar la creación de una nueva mascota en Pet Store - OK

    * def petCreation =
    """
    {
      "id": 1,
      "category": {
        "id": 0,
        "name": "string"
      },
      "name": "Max",
      "photoUrls": [
        "string"
      ],
      "tags": [
        {
          "id": 0,
          "name": "string"
        }
      ],
      "status": "available"
    }
    """

    Given path 'pet'
    And request petCreation
    When method post
    Then status 200
    And print response

  