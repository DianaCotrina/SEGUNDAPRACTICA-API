Feature: Gestion de usuarios

  @crearUsuario
  Scenario: Crear usuario

    When creo el usuario con username "jperez", firstname "Juan", lastname "Perez"
    Then el código de respuesta es 200
    And el type es "unknown"

  @actualizarUsuario
  Scenario: Actualizo el nombre de usuario
    Given consulto el usuario con nombre "jsalas"
    When actualizo el usuario "jperez" con nuevo username "nuevoUsername"
    Then el código de respuesta es 200

  @actualizarUsuarioMasivo
  Scenario Outline: Actualizo el nombre del usuario de forma masiva
    Given consulto el usuario con nombre "<userNameOld>"
    When actualizo el usuario "<userNameOld>" con nuevo username "<UserNameNew>"
    Then el código de respuesta es 200
    Examples:
    |userNameOld|UserNameNew|detalle ejemplo|
    | prueba1   | userName1 |usuario clase 1|
    | prueba2   | userName2 |usuaria clase 2|