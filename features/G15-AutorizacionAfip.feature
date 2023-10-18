Feature: Concretar Autorización de Venta con AFIP
    "Como vendedor, quiero concretar la autorización de venta con AFIP para poder completar la venta correctamente."

    Scenario: Solicitud de venta aprobada
        Given una venta en curso
        When solicito autorización a AFIP para la venta actual
        And envío los datos de la venta actual a AFIP
        Then se indica que la respuesta de AFIP es aceptada para completar la venta

    Scenario: Solicitud de venta rechazada
        Given una venta en curso
        When solicito autorización a AFIP para la venta actual
        And se envían los datos de la venta actual a AFIP
        Then se indica que la respuesta de AFIP es rechazada