create table customer(
	Index serial primary key,
	Customer_Id	varchar(150),
	First_Name varchar(30),
	Last_Name varchar(30),
	Age int,
	Company varchar(100),
	City varchar(100),
	Country	varchar(100),
	Phone1 varchar(40),
	Phone2 varchar(40),
	Email varchar(50),
	Subscription_Date varchar(50),
	Website varchar(50)
)
	
select * from customer

copy customer from 'D:\SQL\customers-1000 - Copy.csv' DELIMITER ',' csv header

select * from customer

update customer set Age=78 where Age>78
	
alter table customer add constraint age_not_greater check(Age<=78)

select * from customer

alter table customer add column Checking varchar(20)

select * from customer

begin
	
update customer set Checking = 'a1' where index<=70

select * from customer

rollback

select * from customer

update customer set Checking = 'a1' where index<=200

begin

update customer set Checking = 'a2' where index>=200 and index<=400

update customer set Checking = 'b1' where index>=401 and index<=600

update customer set Checking = 'b2' where index>=601 and index<=800

update customer set Checking = 'check' where index>=801 and index<=1000

select * from customer

begin

update customer set Checking='Uncheck' where Checking in('a1','b1','check')

select * from customer

alter table customer add constraint checking_done check(Checking not in('a1','b1','check'))

select * from customer