Feature: Creación de órdenes

  @crearOrden
  Scenario: Crear orden

    When creo creo la orden con petId "1"
    Then el código de respuesta es 200
