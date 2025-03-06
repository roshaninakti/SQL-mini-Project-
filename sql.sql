use sakila
select substring(first_name, 1,3)from actor;
select concat(first_name, last_name)  fullname from actor;
select abs(+40);
select sqrt(64);
select truncate(12344.245, 2);
select truncate(54677.98, -2);
select current_date();
select current_time();
select now();
select sysdate();
select month("2002-03-25");
select day("2002-03-25");



