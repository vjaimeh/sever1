TYPE=VIEW
query=select `pos112_main`.`productos`.`id` AS `p_id`,`pos112_main`.`productos`.`codigobarras` AS `p_codigobarras`,`pos112_main`.`productos`.`nombre` AS `p_nombre`,`pos112_main`.`productos`.`activo` AS `p_activo`,`pos112_main`.`productos`.`fecha_creado` AS `p_fecha_creado`,`pos112_main`.`productos`.`fecha_modificado` AS `p_fecha_modificado`,`tinv`.`id` AS `inv_id`,`tinv`.`sucursal_id` AS `inv_sucursal_id`,`tinv`.`terminal_id` AS `inv_terminal_id`,`tinv`.`producto_id` AS `inv_producto_id`,`tinv`.`entradaCantidad` AS `inv_entradaCantidad`,`tinv`.`entradaCosto` AS `inv_entradaCosto`,(`tinv`.`entradaCosto` * `tinv`.`entradaCantidad`) AS `inv_entradaTotal`,`tinv`.`entradaFecha` AS `inv_entradaFecha`,`tinv`.`inventarioPrecio` AS `inv_inventarioPrecio`,`tinv`.`inventarioExistencia` AS `inv_inventarioExistencia`,`tinv`.`inventarioMinimo` AS `inv_inventarioMinimo`,(`tinv`.`inventarioExistencia` - `tinv`.`inventarioMinimo`) AS `inv_inventarioFaltantes`,`tinv`.`ajustePositivo` AS `inv_ajustePositivo`,`tinv`.`ajusteNegativo` AS `inv_ajusteNegativo`,`tinv`.`ventaCantidad` AS `inv_ventaCantidad`,`tinv`.`ventaPrecio` AS `inv_ventaPrecio`,`tinv`.`ventaTotal` AS `inv_ventaTotal`,`tinv`.`modificado` AS `inv_modificado`,`tinv`.`usuario_id` AS `inv_usuario_id`,`tinv`.`rContador` AS `inv_contador`,`pos112_main`.`usuarios`.`email` AS `inv_us_email`,`pos112_main`.`usuarios`.`nombre` AS `inv_us_nombre`,`pos112_main`.`sucursales`.`id` AS `suc_id`,`pos112_main`.`sucursales`.`nombre` AS `suc_nombre` from ((((`pos112_main`.`productos` left join `pos112_main`.`inventario_vw_calc` `tinv` on((`tinv`.`producto_id` = `pos112_main`.`productos`.`id`))) left join `pos112_main`.`sucursales` on((`tinv`.`sucursal_id` = `pos112_main`.`sucursales`.`id`))) left join `pos112_main`.`terminales` on((`tinv`.`terminal_id` = `pos112_main`.`terminales`.`id`))) left join `pos112_main`.`usuarios` on((`tinv`.`usuario_id` = `pos112_main`.`usuarios`.`id`))) order by `pos112_main`.`productos`.`nombre`,`pos112_main`.`sucursales`.`nombre`,`tinv`.`rContador`
md5=e2bf3170375447eb24d036179dc91e92
updatable=0
algorithm=0
definer_user=pos112
definer_host=localhost
suid=1
with_check_option=0
timestamp=2019-02-14 00:30:44
create-version=2
source=select `pos112_main`.`productos`.`id` AS `p_id`,`pos112_main`.`productos`.`codigobarras` AS `p_codigobarras`,`pos112_main`.`productos`.`nombre` AS `p_nombre`,`pos112_main`.`productos`.`activo` AS `p_activo`,`pos112_main`.`productos`.`fecha_creado` AS `p_fecha_creado`,`pos112_main`.`productos`.`fecha_modificado` AS `p_fecha_modificado`,`tinv`.`id` AS `inv_id`,`tinv`.`sucursal_id` AS `inv_sucursal_id`,`tinv`.`terminal_id` AS `inv_terminal_id`,`tinv`.`producto_id` AS `inv_producto_id`,`tinv`.`entradaCantidad` AS `inv_entradaCantidad`,`tinv`.`entradaCosto` AS `inv_entradaCosto`,(`tinv`.`entradaCosto` * `tinv`.`entradaCantidad`) AS `inv_entradaTotal`,`tinv`.`entradaFecha` AS `inv_entradaFecha`,`tinv`.`inventarioPrecio` AS `inv_inventarioPrecio`,`tinv`.`inventarioExistencia` AS `inv_inventarioExistencia`,`tinv`.`inventarioMinimo` AS `inv_inventarioMinimo`,(`tinv`.`inventarioExistencia` - `tinv`.`inventarioMinimo`) AS `inv_inventarioFaltantes`,`tinv`.`ajustePositivo` AS `inv_ajustePositivo`,`tinv`.`ajusteNegativo` AS `inv_ajusteNegativo`,`tinv`.`ventaCantidad` AS `inv_ventaCantidad`,`tinv`.`ventaPrecio` AS `inv_ventaPrecio`,`tinv`.`ventaTotal` AS `inv_ventaTotal`,`tinv`.`modificado` AS `inv_modificado`,`tinv`.`usuario_id` AS `inv_usuario_id`,`tinv`.`rContador` AS `inv_contador`,`pos112_main`.`usuarios`.`email` AS `inv_us_email`,`pos112_main`.`usuarios`.`nombre` AS `inv_us_nombre`,`pos112_main`.`sucursales`.`id` AS `suc_id`,`pos112_main`.`sucursales`.`nombre` AS `suc_nombre` from ((((`pos112_main`.`productos` left join `pos112_main`.`inventario_vw_calc` `tinv` on((`tinv`.`producto_id` = `pos112_main`.`productos`.`id`))) left join `pos112_main`.`sucursales` on((`tinv`.`sucursal_id` = `pos112_main`.`sucursales`.`id`))) left join `pos112_main`.`terminales` on((`tinv`.`terminal_id` = `pos112_main`.`terminales`.`id`))) left join `pos112_main`.`usuarios` on((`tinv`.`usuario_id` = `pos112_main`.`usuarios`.`id`))) order by `pos112_main`.`productos`.`nombre`,`pos112_main`.`sucursales`.`nombre`,`tinv`.`rContador`
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `pos112_main`.`productos`.`id` AS `p_id`,`pos112_main`.`productos`.`codigobarras` AS `p_codigobarras`,`pos112_main`.`productos`.`nombre` AS `p_nombre`,`pos112_main`.`productos`.`activo` AS `p_activo`,`pos112_main`.`productos`.`fecha_creado` AS `p_fecha_creado`,`pos112_main`.`productos`.`fecha_modificado` AS `p_fecha_modificado`,`tinv`.`id` AS `inv_id`,`tinv`.`sucursal_id` AS `inv_sucursal_id`,`tinv`.`terminal_id` AS `inv_terminal_id`,`tinv`.`producto_id` AS `inv_producto_id`,`tinv`.`entradaCantidad` AS `inv_entradaCantidad`,`tinv`.`entradaCosto` AS `inv_entradaCosto`,(`tinv`.`entradaCosto` * `tinv`.`entradaCantidad`) AS `inv_entradaTotal`,`tinv`.`entradaFecha` AS `inv_entradaFecha`,`tinv`.`inventarioPrecio` AS `inv_inventarioPrecio`,`tinv`.`inventarioExistencia` AS `inv_inventarioExistencia`,`tinv`.`inventarioMinimo` AS `inv_inventarioMinimo`,(`tinv`.`inventarioExistencia` - `tinv`.`inventarioMinimo`) AS `inv_inventarioFaltantes`,`tinv`.`ajustePositivo` AS `inv_ajustePositivo`,`tinv`.`ajusteNegativo` AS `inv_ajusteNegativo`,`tinv`.`ventaCantidad` AS `inv_ventaCantidad`,`tinv`.`ventaPrecio` AS `inv_ventaPrecio`,`tinv`.`ventaTotal` AS `inv_ventaTotal`,`tinv`.`modificado` AS `inv_modificado`,`tinv`.`usuario_id` AS `inv_usuario_id`,`tinv`.`rContador` AS `inv_contador`,`pos112_main`.`usuarios`.`email` AS `inv_us_email`,`pos112_main`.`usuarios`.`nombre` AS `inv_us_nombre`,`pos112_main`.`sucursales`.`id` AS `suc_id`,`pos112_main`.`sucursales`.`nombre` AS `suc_nombre` from ((((`pos112_main`.`productos` left join `pos112_main`.`inventario_vw_calc` `tinv` on((`tinv`.`producto_id` = `pos112_main`.`productos`.`id`))) left join `pos112_main`.`sucursales` on((`tinv`.`sucursal_id` = `pos112_main`.`sucursales`.`id`))) left join `pos112_main`.`terminales` on((`tinv`.`terminal_id` = `pos112_main`.`terminales`.`id`))) left join `pos112_main`.`usuarios` on((`tinv`.`usuario_id` = `pos112_main`.`usuarios`.`id`))) order by `pos112_main`.`productos`.`nombre`,`pos112_main`.`sucursales`.`nombre`,`tinv`.`rContador`
mariadb-version=100136
