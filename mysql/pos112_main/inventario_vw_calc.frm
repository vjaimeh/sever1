TYPE=VIEW
query=select `pos112_main`.`inventario`.`id` AS `id`,`pos112_main`.`inventario`.`sucursal_id` AS `sucursal_id`,`pos112_main`.`inventario`.`terminal_id` AS `terminal_id`,`pos112_main`.`inventario`.`producto_id` AS `producto_id`,`pos112_main`.`inventario`.`entradaCantidad` AS `entradaCantidad`,`pos112_main`.`inventario`.`entradaCosto` AS `entradaCosto`,`pos112_main`.`inventario`.`entradaTotal` AS `entradaTotal`,`pos112_main`.`inventario`.`entradaFecha` AS `entradaFecha`,`pos112_main`.`inventario`.`inventarioPrecio` AS `inventarioPrecio`,`pos112_main`.`inventario`.`inventarioExistencia` AS `inventarioExistencia`,`pos112_main`.`inventario`.`inventarioMinimo` AS `inventarioMinimo`,`pos112_main`.`inventario`.`ajustePositivo` AS `ajustePositivo`,`pos112_main`.`inventario`.`ajusteNegativo` AS `ajusteNegativo`,`pos112_main`.`inventario`.`ventaCantidad` AS `ventaCantidad`,`pos112_main`.`inventario`.`ventaPrecio` AS `ventaPrecio`,`pos112_main`.`inventario`.`ventaTotal` AS `ventaTotal`,`pos112_main`.`inventario`.`modificado` AS `modificado`,`pos112_main`.`inventario`.`usuario_id` AS `usuario_id`,0 AS `rContador` from `pos112_main`.`inventario` union select 0 AS `id`,0 AS `sucursal_id`,0 AS `terminal_id`,`pos112_main`.`inventario`.`producto_id` AS `producto_id`,sum(`pos112_main`.`inventario`.`entradaCantidad`) AS `sum(``entradaCantidad``)`,avg(`pos112_main`.`inventario`.`entradaCosto`) AS `AVG(``entradaCosto``)`,NULL AS `entradaTotal`,NULL AS `entradaFecha`,avg(`pos112_main`.`inventario`.`inventarioPrecio`) AS `AVG(``inventarioPrecio``)`,sum(`pos112_main`.`inventario`.`inventarioExistencia`) AS `sum(``inventarioExistencia``)`,sum(`pos112_main`.`inventario`.`inventarioMinimo`) AS `sum(``inventarioMinimo``)`,sum(`pos112_main`.`inventario`.`ajustePositivo`) AS `sum(``ajustePositivo``)`,sum(`pos112_main`.`inventario`.`ajusteNegativo`) AS `sum(``ajusteNegativo``)`,sum(`pos112_main`.`inventario`.`ventaCantidad`) AS `sum(``ventaCantidad``)`,avg(`pos112_main`.`inventario`.`ventaPrecio`) AS `AVG(``ventaPrecio``)`,sum(`pos112_main`.`inventario`.`ventaTotal`) AS `sum(``ventaTotal``)`,NULL AS `modificado`,0 AS `usuario_id`,count(0) AS `rContador` from `pos112_main`.`inventario` group by `pos112_main`.`inventario`.`producto_id` order by `producto_id`,`rContador`
md5=c57c6d692950c3647c2eacd9e97d52d9
updatable=0
algorithm=0
definer_user=pos112
definer_host=localhost
suid=1
with_check_option=0
timestamp=2019-01-13 02:38:45
create-version=2
source=select `inventario`.`id` AS `id`,`inventario`.`sucursal_id` AS `sucursal_id`,`inventario`.`terminal_id` AS `terminal_id`,`inventario`.`producto_id` AS `producto_id`,`inventario`.`entradaCantidad` AS `entradaCantidad`,`inventario`.`entradaCosto` AS `entradaCosto`,`inventario`.`entradaTotal` AS `entradaTotal`,`inventario`.`entradaFecha` AS `entradaFecha`,`inventario`.`inventarioPrecio` AS `inventarioPrecio`,`inventario`.`inventarioExistencia` AS `inventarioExistencia`,`inventario`.`inventarioMinimo` AS `inventarioMinimo`,`inventario`.`ajustePositivo` AS `ajustePositivo`,`inventario`.`ajusteNegativo` AS `ajusteNegativo`,`inventario`.`ventaCantidad` AS `ventaCantidad`,`inventario`.`ventaPrecio` AS `ventaPrecio`,`inventario`.`ventaTotal` AS `ventaTotal`,`inventario`.`modificado` AS `modificado`,`inventario`.`usuario_id` AS `usuario_id`,0 AS `rContador` from `inventario` union select 0 AS `id`,0 AS `sucursal_id`,0 AS `terminal_id`,`inventario`.`producto_id` AS `producto_id`,sum(`inventario`.`entradaCantidad`) AS `sum(``entradaCantidad``)`,avg(`inventario`.`entradaCosto`) AS `AVG(``entradaCosto``)`,NULL AS `entradaTotal`,NULL AS `entradaFecha`,avg(`inventario`.`inventarioPrecio`) AS `AVG(``inventarioPrecio``)`,sum(`inventario`.`inventarioExistencia`) AS `sum(``inventarioExistencia``)`,sum(`inventario`.`inventarioMinimo`) AS `sum(``inventarioMinimo``)`,sum(`inventario`.`ajustePositivo`) AS `sum(``ajustePositivo``)`,sum(`inventario`.`ajusteNegativo`) AS `sum(``ajusteNegativo``)`,sum(`inventario`.`ventaCantidad`) AS `sum(``ventaCantidad``)`,avg(`inventario`.`ventaPrecio`) AS `AVG(``ventaPrecio``)`,sum(`inventario`.`ventaTotal`) AS `sum(``ventaTotal``)`,NULL AS `modificado`,0 AS `usuario_id`,count(0) AS `rContador` from `inventario` group by `inventario`.`producto_id` order by `producto_id`,`rContador`
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_general_ci
view_body_utf8=select `pos112_main`.`inventario`.`id` AS `id`,`pos112_main`.`inventario`.`sucursal_id` AS `sucursal_id`,`pos112_main`.`inventario`.`terminal_id` AS `terminal_id`,`pos112_main`.`inventario`.`producto_id` AS `producto_id`,`pos112_main`.`inventario`.`entradaCantidad` AS `entradaCantidad`,`pos112_main`.`inventario`.`entradaCosto` AS `entradaCosto`,`pos112_main`.`inventario`.`entradaTotal` AS `entradaTotal`,`pos112_main`.`inventario`.`entradaFecha` AS `entradaFecha`,`pos112_main`.`inventario`.`inventarioPrecio` AS `inventarioPrecio`,`pos112_main`.`inventario`.`inventarioExistencia` AS `inventarioExistencia`,`pos112_main`.`inventario`.`inventarioMinimo` AS `inventarioMinimo`,`pos112_main`.`inventario`.`ajustePositivo` AS `ajustePositivo`,`pos112_main`.`inventario`.`ajusteNegativo` AS `ajusteNegativo`,`pos112_main`.`inventario`.`ventaCantidad` AS `ventaCantidad`,`pos112_main`.`inventario`.`ventaPrecio` AS `ventaPrecio`,`pos112_main`.`inventario`.`ventaTotal` AS `ventaTotal`,`pos112_main`.`inventario`.`modificado` AS `modificado`,`pos112_main`.`inventario`.`usuario_id` AS `usuario_id`,0 AS `rContador` from `pos112_main`.`inventario` union select 0 AS `id`,0 AS `sucursal_id`,0 AS `terminal_id`,`pos112_main`.`inventario`.`producto_id` AS `producto_id`,sum(`pos112_main`.`inventario`.`entradaCantidad`) AS `sum(``entradaCantidad``)`,avg(`pos112_main`.`inventario`.`entradaCosto`) AS `AVG(``entradaCosto``)`,NULL AS `entradaTotal`,NULL AS `entradaFecha`,avg(`pos112_main`.`inventario`.`inventarioPrecio`) AS `AVG(``inventarioPrecio``)`,sum(`pos112_main`.`inventario`.`inventarioExistencia`) AS `sum(``inventarioExistencia``)`,sum(`pos112_main`.`inventario`.`inventarioMinimo`) AS `sum(``inventarioMinimo``)`,sum(`pos112_main`.`inventario`.`ajustePositivo`) AS `sum(``ajustePositivo``)`,sum(`pos112_main`.`inventario`.`ajusteNegativo`) AS `sum(``ajusteNegativo``)`,sum(`pos112_main`.`inventario`.`ventaCantidad`) AS `sum(``ventaCantidad``)`,avg(`pos112_main`.`inventario`.`ventaPrecio`) AS `AVG(``ventaPrecio``)`,sum(`pos112_main`.`inventario`.`ventaTotal`) AS `sum(``ventaTotal``)`,NULL AS `modificado`,0 AS `usuario_id`,count(0) AS `rContador` from `pos112_main`.`inventario` group by `pos112_main`.`inventario`.`producto_id` order by `producto_id`,`rContador`
mariadb-version=100136
