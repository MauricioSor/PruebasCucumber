Feature: Agregar Artículo
    "Como vendedor quiero agregar artículos para cargar en un listado de artículos de la venta en curso."

    Scenario: Se agrega el artículo al listado.
        Given una venta en curso
        When selecciono un artículo <Articulo> por su talle <Talle> color <Color>, precio <precio>, stock <stock>, en sucursal <Sucursal> de la lista de artículos encontrados
        And se ingresa la <Cantidad> cantidad de artículos necesarios
        Then se agrega el artículos, a la lista de artículos de la venta

    Example:
            | Articulo | Talle | Color | Precio | Stock | Cantidad | Sucursal |
            | Remera   | L     | Roja  | $8000  | 20    | 2        | Centro   |

    Scenario: Selección de artículo sin stock
        Given una venta en curso
        When selecciono un artículo <Articulo> por su talle <Talle> color <Color>, precio <precio>, stock <stock>, en sucursal <Sucursal> de la lista de artículos encontrados
        Then se indica que el articulo no posee existencias en su inventario

    Example:
            | Articulo | Talle | Color | Precio | Stock | Cantidad | Sucursal |
            | Remera   | L     | Roja  | $8000  | 0     | 2        | centro   |


    Scenario: Selección de cantidad de artículo insuficiente
        Given una venta en curso
        When selecciono un artículo <Articulo> por su talle <Talle> color <Color>, precio <precio>, stock <stock>, en sucursal <Sucursal> de la lista de artículos encontrados
        And se ingresa la <Cantidad> cantidad de artículos necesarios
        Then se indica que el articulo no posee stock suficiente en su inventario

    Example:
            | Articulo | Talle | Color | Precio | Stock | Cantidad | Sucursal |
            | Remera   | L     | Roja  | $8000  | 2     | 3        | centro   |
