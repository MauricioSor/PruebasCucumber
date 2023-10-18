Feature: Busqueda de cliente
    "Como vendedor quiero buscar un cliente registrado por dni para iniciar la venta"

    Scenario: cliente encontrado
        Given una venta iniciada
        When ingreso el <dni> dni del cliente registrado
        Then muestra el cliente por <nombre> nombre y <condicion tributaria> condicion tributaria

    Example:
            | dni      | nombre   | condicion tributaria |
            | 41059898 | Mauricio | monotributista       |

    Scenario: cliente no encontrado
        Given una venta inicia
        When ingreso el dni del cliente registrado
        Then muestra que el cliente no esta registrado
