create sequence s1;
create table t1 (
a int primary key default (next value for s1), 
b int
);
 
insert into t1 (b) values (5),(8);


select * from t1;

