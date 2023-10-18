Feature: Finalizar Venta
    "Como vendedor quiero finalizar la venta para emitir el comprobante de venta, actualizar el stock del/los articulo(s) en el inventario, y registrar la venta realizada."

    Scenario: Finalizar venta en efectivo.
        Given una venta en curso
        When el vendedor selecciona ‘Finalizar Venta’
        Then se emite el comprobante de <Articulo> con los datos de la venta.
        And se incrementa el número de comprobante <idComprobante>
        And se actualiza el inventario por la <Cantidad> cantidad articulos vendidos

            Example:
            |idComprobante| Articulo | Color | Talle | Cantidad | Precio | Subtotal |
            |0001-00000001| Remera   | Roja  | L     | 2        | 3200   | 6400     |
            |0001-00000001| Pantalón | Azul  | 48    | 1        | 8000   | 8000     |
    