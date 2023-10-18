Feature: Iniciar Venta
    "Como vendedor, quiero empezar una nueva venta para comenzar la carga de artículos a la venta."

    Scenario: El cliente es consumidor final
        Given un cliente "<Nombre>" "consumidor final" con "<dni>" DNI
        When inicia una nueva venta como "<Condicion Tributaria>" consumidor final
        Then se crea una nueva venta
        And la nueva venta es asociada a los datos del cliente nuevo

    Example:
            | Nombre             | dni        | Condicion Tributaria |
            | "Consumidor final" | "xxxxxxxx" | "Consumidor-final"   |