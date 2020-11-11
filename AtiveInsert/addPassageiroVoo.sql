create trigger add_milhas after
insert on cliente
for each row
insert into milhas (cliente,quantidade) values (new.cliente,0.0);


