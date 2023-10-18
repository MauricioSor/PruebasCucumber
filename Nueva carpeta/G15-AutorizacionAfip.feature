Feature: Autorización de Venta mediante AFIP
    "Como vendedor quiero concretar la autorización de venta con AFIP para poder completar la venta"
    Scenario: Solicitud de venta aprobada
        Given una venta en curso
        When solicito autorización a afip
        And envio los datos de la venta actual
        Then se indica que la respuesta es aceptada para completar la venta

    Scenario: Solicitud de venta rechazada.
        Given una venta en curso
        When solicito autorizacion a afip
        And se envia los datos de la venta actual
        Then se indica que la respuesta es rechazada
