create trigger add_passageiro after
insert on cliente_voo
for each row
update voo v
set num_passageiros = num_passageiros + 1
where v.codigoV = new.voo;