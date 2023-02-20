create database Ecommerce;
use Ecommerce;
create table supplier(
SUPP_ID int auto_increment,
SUPP_NAME varchar(50) NOT NULL,
SUPP_CITY varchar(50) NOT NULL,
SUPP_PHONE varchar(50) NOT NULL,
primary key(SUPP_ID));

create table customer(
CUS_ID int auto_increment,
CUS_NAME varchar(20) NOT NULL,
CUS_PHONE varchar(10) NOT NULL,
CUS_CITY varchar(30) NOT NULL,
CUS_GENDER char,
primary key(CUS_ID));

create table category(
CAT_ID int auto_increment,
CAT_NAME varchar(20) NOT NULL,
primary key(CAT_ID));

create table product(
PRO_ID int auto_increment,
PRO_NAME varchar(20) NOT NULL DEFAULT('Dummy'),
PRO_DESC varchar(60),
CAT_ID int,
primary key(PRO_ID),
foreign key(CAT_ID) references category(CAT_ID)
);

create table supplier_pricing(
PRICING_ID int auto_increment,
PRO_ID int,
SUPP_ID int,
SUPP_PRICE int DEFAULT 0,
primary key(PRICING_ID),
foreign key(PRO_ID) references product(PRO_ID),
foreign key(SUPP_ID) references supplier(SUPP_ID)
);

create table `order`(
ORD_ID int,
ORD_AMOUNT int NOT NULL,
ORD_DATE date NOT NULL,
CUS_ID int,
PRICING_ID int,
foreign key(CUS_ID) references customer(CUS_ID),
foreign key(PRICING_ID) references supplier_pricing(PRICING_ID)
);
CREATE INDEX idx_order_id ON `order` (ORD_ID);

create table rating(
RAT_ID int NOT NULL auto_increment,
ORD_ID int,
RAT_RATSTARS int NOT NULL,
primary key(RAT_ID),
foreign key(ORD_ID) references `order`(ORD_ID)
);

select * from supplier;
select * from customer;
select * from category;
select * from product;
select * from supplier_pricing;
select * from `order`;
select * from rating;
