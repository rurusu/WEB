USE  ASPTEST;

SELECT * FROM t1;

SELECT * FROM useraddress;
select * from userregistration;


use WEB;
select * from administrators;
select * from user;
select * from userss;

use BJWORK95;
/*sex 1 =female 2 male*/
select * from users;
insert into users(user_id,u_name,u_password,u_email,u_birth,u_sex)
value(1,'qoo','qoo','qoo@gmail.com','1990-3-21',1);
update users set u_birth= '1990-3-21' where user_id = 1;
insert into users(user_id,u_name,u_password,u_email,u_birth,u_sex)
values
(2,'Petty','Petty','petty@gmail.com','1992-3-11',1),
(3,'Jeff','Jeff','jeff@gmail.com','1988-8-11',2),
(4,'Nicole','Nicole','nicole@gmail.com','1985-11-20',1),
(5,'Annie','Annie','annie@hotmail.com','1991-5-22',1),
(6,'Susan','Susan','susan@gmail.com','1988-9-25',1),
(7,'Yevon','Yevon','yevon@gmail.com','1987-2-16',2),
(8,'Scott','Scott','scott@gmail.com','1995-4-11',2),
(9,'Arashi','Arashi','arashi@hotmail.com','1982-8-9',2),
(10,'Plus','Plus','plus@gmail.com','2000-6-11',2),
(11,'Kiddo','Kiddo','kiddo@hotmail.com','1986-3-8',2);



select * from personal_sport_menu;
select * from user_title;
select * from sport_type;
insert into sport_type values
(1,1,'三頭肌'),
(1,2,'二頭肌'),
(1,3,'背部'),
(1,4,'肩膀'),
(1,5,'胸部'),
(1,6,'前臂'),
(1,7,'臀肌'),
(1,8,'腹肌肌群'),
(2,9,'健走'),
(2,10,'跑步'),
(2,11,'公路自行車');

select * from personal_sport_menu;
/*GPS*/
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) value
(1,'2017-3-23',10,2.5,'1:10:28',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(1,'2017-3-23',10,2.5,'1:10:28',1),
(5,'2017-3-23',11,10,'2:10:28',1),
(6,'2017-3-24',9,2.8,'2:30:28',1),
(8,'2017-3-24',10,1.2,'00:20:25',1),
(2,'2017-3-24',9,3.0,'2:10:28',1),
(1,'2017-3-25',11,8,'1:35:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(2,'2017-3-26',10,2.5,'1:10:28',1),
(5,'2017-3-26',11,10,'2:10:28',1),
(6,'2017-3-26',9,2.8,'2:30:28',1),
(8,'2017-3-26',10,1.2,'00:20:25',1),
(3,'2017-3-26',9,3.0,'2:10:28',1),
(1,'2017-3-27',10,5.2,'1:20:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(2,'2017-3-28',10,2.5,'1:10:28',1),
(7,'2017-3-28',11,10,'2:10:28',1),
(4,'2017-3-28',9,2.8,'2:30:28',1),
(9,'2017-3-28',10,1.2,'00:20:25',1),
(10,'2017-3-28',9,3.0,'2:10:28',1),
(11,'2017-3-28',11,8,'1:35:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(4,'2017-3-30',10,2.5,'1:10:28',1),
(5,'2017-3-30',11,10,'2:10:28',1),
(6,'2017-3-30',9,2.8,'2:30:28',1),
(8,'2017-3-30',10,1.2,'00:20:25',1),
(3,'2017-3-30',9,3.0,'2:10:28',1),
(1,'2017-3-30',10,5.2,'1:20:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(2,'2017-4-1',10,2.5,'1:10:28',1),
(7,'2017-4-1',11,10,'2:10:28',1),
(9,'2017-4-1',10,1.2,'00:20:25',1),
(10,'2017-4-1',9,3.0,'2:10:28',1),
(11,'2017-4-1',11,8,'1:35:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(4,'2017-4-2',10,2.5,'1:10:28',1),
(5,'2017-4-2',11,10,'2:10:28',1),
(6,'2017-4-2',9,2.8,'2:30:28',1),
(8,'2017-4-2',10,1.2,'00:20:25',1),
(3,'2017-4-2',9,3.0,'2:10:28',1),
(1,'2017-4-2',10,5.2,'1:20:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(7,'2017-4-3',10,2.5,'1:10:28',1),
(9,'2017-4-3',11,10,'2:10:28',1),
(10,'2017-4-3',10,1.2,'00:20:25',1),
(2,'2017-4-3',9,3.0,'2:10:28',1),
(11,'2017-4-3',11,8,'1:35:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(5,'2017-4-4',10,2.5,'1:10:28',1),
(1,'2017-4-4',11,10,'2:10:28',1),
(8,'2017-4-4',9,2.8,'2:30:28',1),
(4,'2017-4-4',10,1.2,'00:20:25',1),
(6,'2017-4-4',9,3.0,'2:10:28',1),
(3,'2017-4-4',10,5.2,'1:20:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(9,'2017-4-5',10,2.5,'1:10:28',1),
(11,'2017-4-5',11,10,'2:10:28',1),
(2,'2017-4-5',10,1.2,'00:20:25',1),
(10,'2017-4-5',9,3.0,'2:10:28',1),
(7,'2017-4-5',11,8,'1:35:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(8,'2017-4-6',10,2.5,'1:10:28',1),
(5,'2017-4-6',11,10,'2:10:28',1),
(3,'2017-4-6',9,2.8,'2:30:28',1),
(6,'2017-4-6',10,1.2,'00:20:25',1),
(1,'2017-4-6',9,3.0,'2:10:28',1),
(4,'2017-4-6',10,5.2,'1:20:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(11,'2017-4-7',10,2.5,'1:10:28',1),
(7,'2017-4-7',11,10,'2:10:28',1),
(10,'2017-4-7',10,1.2,'00:20:25',1),
(2,'2017-4-7',9,3.0,'2:10:28',1),
(9,'2017-4-7',11,8,'1:35:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(5,'2017-4-8',10,2.5,'1:10:28',1),
(1,'2017-4-8',11,10,'2:10:28',1),
(8,'2017-4-8',9,2.8,'2:30:28',1),
(4,'2017-4-8',10,1.2,'00:20:25',1),
(6,'2017-4-8',9,3.0,'2:10:28',1),
(3,'2017-4-8',10,5.2,'1:20:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(9,'2017-4-9',10,2.5,'1:10:28',1),
(11,'2017-4-9',11,10,'2:10:28',1),
(2,'2017-4-9',10,1.2,'00:20:25',1),
(10,'2017-4-9',9,3.0,'2:10:28',1),
(7,'2017-4-9',11,8,'1:35:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(8,'2017-4-10',10,2.5,'1:10:28',1),
(5,'2017-4-10',11,10,'2:10:28',1),
(3,'2017-4-10',9,2.8,'2:30:28',1),
(6,'2017-4-10',10,1.2,'00:20:25',1),
(1,'2017-4-10',9,3.0,'2:10:28',1),
(4,'2017-4-10',10,5.2,'1:20:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(11,'2017-4-11',10,2.5,'1:10:28',1),
(7,'2017-4-1',11,10,'2:10:28',1),
(10,'2017-4-11',10,1.2,'00:20:25',1),
(2,'2017-4-11',9,3.0,'2:10:28',1),
(9,'2017-4-11',11,8,'1:35:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(4,'2017-4-12',10,2.5,'1:10:28',1),
(3,'2017-4-12',11,10,'2:10:28',1),
(8,'2017-4-12',9,2.8,'2:30:28',1),
(5,'2017-4-12',10,1.2,'00:20:25',1),
(6,'2017-4-12',9,3.0,'2:10:28',1),
(1,'2017-4-12',10,5.2,'1:20:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(9,'2017-4-13',10,2.5,'1:10:28',1),
(11,'2017-4-13',11,10,'2:10:28',1),
(2,'2017-4-13',10,1.2,'00:20:25',1),
(10,'2017-4-13',9,3.0,'2:10:28',1),
(7,'2017-4-13',11,8,'1:35:17',1);
insert into personal_sport_menu(user_id,spdate,sport_id,distance,times,finish) values
(8,'2017-4-14',10,2.5,'1:10:28',1),
(5,'2017-4-14',11,10,'2:10:28',1),
(3,'2017-4-14',9,2.8,'2:30:28',1),
(6,'2017-4-14',10,1.2,'00:20:25',1),
(1,'2017-4-14',9,3.0,'2:10:28',1),
(4,'2017-4-14',10,5.2,'1:20:17',1);


select *from personal_sport_menu where user_id =1 and sport_id =10;
select * ,count(distinct user_id) from personal_sport_menu where sport_id =10 order  by distance  limit 10 ;/*大→小*/
select distinct user_id, spdate from personal_sport_menu where sport_id =10 order by distance;
/****************最終版******************/
select user_id,spdate,distance from personal_sport_menu where sport_id=10 group by user_id order by distance desc limit 10;
/**/

/*Workout*/
insert into personal_sport_menu(user_id,spdate,sport_id,sets,reps,times,finish) value
(2,'2017-3-13',3,10,3,'1:10:28',1);
insert into personal_sport_menu(user_id,spdate,sport_id,sets,reps,times,finish) values
(1,'2017-3-15',3,10,2,'1:10:28',1),
(3,'2017-3-15',4,12,3,'1:45:28',1),
(5,'2017-3-15',3,8,5,'1:10:28',1),
(7,'2017-3-15',5,9,5,'1:10:28',1),
(9,'2017-3-15',2,6,5,'1:10:28',1),
(11,'2017-3-15',1,5,8,'1:10:28',1),
(10,'2017-3-15',3,8,3,'1:10:28',1),
(8,'2017-3-15',5,6,5,'1:10:28',1),
(6,'2017-3-15',2,10,3,'1:10:28',1),
(4,'2017-3-15',4,12,3,'1:10:28',1);





