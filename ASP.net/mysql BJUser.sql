SELECT * FROM BJWORK95.BJUser;
INSERT INTO BJWORK95.users(firstnmae, lastname, email, phonenumber, username, password)
values();
insert into BJWORK95.BJUser(u_name,u_password,u_email,u_birth,u_sex)
value('LG','LG','lg@gmail.com','1990-3-21',2);
use BJWORK95;
create table BJUser
(user_id int auto_increment primary key,
u_photo nvarchar(100),
u_password varchar(50),
u_name varchar(50),
u_email varchar(50),
u_birth date,
u_sex tinyint(1)
);




drop table BJUser