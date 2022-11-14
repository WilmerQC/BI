use america_dmart;
SET lc_time_names = 'es_ES';
SET sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- SELECT @@lc_time_names;
-- set @day_offset = 1; -- sunday SET DATEFIRST 1 ;  
insert into DPRODUCTS (  -- L
	codigo_producto,
    nombre_producto,
    precio_producto,
    costo_producto,
	marca,
    modelo
)
SELECT  -- E
	-- T
	p.codigo_producto, CONCAT(p.nombre_producto, ' ', p.Concent, ' ', p.Presentac, ' frac', p.Fracciones ) as Nom_prodxx, 
    p.costo_producto, p.precio_producto,
	c.marca,
	f.modelo
FROM america.PRODUCTS as p  
	inner join america.CATEGORIAS as c on p.id_categoria= c.id_categoria 