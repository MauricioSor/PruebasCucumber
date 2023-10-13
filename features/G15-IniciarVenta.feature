Feature: Iniciar Venta
    “Como vendedor quiero empezar una nueva venta para comenzar la carga de artículo/s”.

    Scenario: El cliente es consumidor final.
        Given un cliente con condición tributaria “<Consumidor Final>”.
        When inicia una nueva venta.
        Then se crea una nueva venta.
        And la nueva venta es asociada a los datos del cliente nuevo.
    Example:
            | Nombre           | dni      | Condicion Tributaria |
            | Consumidor final | xxxxxxxx | Consumidor-Final     |

    Scenario: El cliente es monotributista.
        Given un cliente “<Matias>” con dni <40293012 > con condición tributaria “<monotributista>”.
        When inicia una nueva venta.
        Then se crea una nueva venta.
        And la nueva venta es asociada a los datos del cliente nuevo.
    Example:
            | Nombre           | dni      | Condicion Tributaria |
            | Consumidor Final | 40293012 | Consumidor-Final     |
