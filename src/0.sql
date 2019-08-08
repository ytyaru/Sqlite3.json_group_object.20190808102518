create table users(id int primary key, key text, value text);
insert into users values(111, 'age', '12');
insert into users values(222, 'name', 'yamada');
insert into users values(333, 'class', 'A');
.headers on
.mode column
select json_group_object(key, value) from users;
