create trigger add_voo_piloto after
insert on voo
for each row
update piloto p
set num_voos = num_voos + 1
where p.codigoP = new.piloto;