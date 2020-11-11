create trigger add_milhas after
insert cliente_voo
as
UPDATE milhas SET quantidade = quantidade + 
(SELECT distancia FROM voo, cliente_voo 
WHERE new.voo = voo.codigo
) / 10
WHERE  cliente = new.cliente;
