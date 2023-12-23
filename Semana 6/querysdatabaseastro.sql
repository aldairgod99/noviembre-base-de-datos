//--Cliente con Inner Join. //
SELECT c.id_cliente, c.nombre_cliente, c.app_cliente, c.apm_cliente, c.correo_electronico, c.contrasena, c.telefono, c.fecha_creacion, e.nombre_estatus
FROM cliente c
INNER JOIN estatus e ON c.id_estatus = e.id_estatus
ORDER BY c.id_cliente;

// --Producto Inner join. //
SELECT p.id_producto, p.nombre_producto, m.nombre_marca, p.modelo, p.stock, p.precio_proveedor, p.precio_publico, p.descripcion, v.nombre_vendedor, p.fecha_creacion, e.nombre_estatus
FROM producto p
JOIN marca m ON p.id_marca = m.id_marca
JOIN vendedor v ON p.id_vendedor = v.id_vendedor
JOIN estatus e ON p.id_estatus = e.id_estatus;

// --Ubicacion Iner Join. //
SELECT u.id_ubicacion, u.nombre_contacto, u.numero_contacto, u.region, u.manzana, u.numero_INTerior, u.numero_exterior, u.codigo_postal, u.calles, u.referencia, c.nombre_cliente
FROM ubicacion u
JOIN cliente c ON u.id_cliente = c.id_cliente;

// --Vendedor Inner Join. //
SELECT v.id_vendedor, v.nombre_vendedor, v.app_vendedor, v.apm_vendedor, v.correo_electronico, v.contrasena, v.telefono, v.fecha_creacion, e.nombre_estatus
FROM vendedor v
JOIN estatus e ON v.id_estatus = e.id_estatus
ORDER BY v.id_vendedor;

// --venta Inner Join. //
SELECT ve.id_venta, vd.nombre_vendedor, c.nombre_cliente, p.nombre_producto, ve.cantidad_producto, ve.fecha_venta
FROM venta ve
INNER JOIN vendedor vd ON ve.id_vendedor = vd.id_vendedor
INNER JOIN cliente c ON ve.id_cliente = c.id_cliente
INNER JOIN producto p ON ve.id_producto = p.id_producto
ORDER BY ve.id_venta;



