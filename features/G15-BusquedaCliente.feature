Feature: Buscar Cliente por DNI
    "Como vendedor, quiero buscar un cliente registrado por DNI para iniciar la venta."

    Scenario: Cliente encontrado
        Given una venta iniciada
        When ingreso el "<dni>" DNI del cliente registrado
        Then muestra el cliente por "<nombre>" nombre y "<condicion tributaria>" condición tributaria

    Example:
            | dni      | nombre   | condicion tributaria |
            | 41059898 | Mauricio | monotributista       |

    Scenario: Cliente no encontrado
        Given una venta iniciada
        When ingreso el DNI del cliente registrado
        Then muestra que el cliente no está registrado