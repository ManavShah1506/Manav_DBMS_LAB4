use Ecommerce;
INSERT INTO supplier(SUPP_NAME,SUPP_CITY,SUPP_PHONE) VALUES
("Rajesh Retails","Delhi",'1234567890'),
("Appario Ltd.","Mumbai",'2589631470'),
("Knome products","Banglore",'9785462315'),
("Bansal Retails","Kochi",'8975463285'),
("Mittal Ltd.","Lucknow",'7898456532');
    
INSERT INTO customer(CUS_NAME,CUS_PHONE,CUS_CITY,CUS_GENDER) VALUES
("AAKASH",'9999999999',"DELHI",'M'),
("AMAN",'9785463215',"NOIDA",'M'),
("NEHA",'9999999999',"MUMBAI",'F'),
("MEGHA",'9994562399',"KOLKATA",'F'),
("PULKIT",'7895999999',"LUCKNOW",'M');

INSERT INTO category(CAT_NAME) VALUES
("BOOKS"),
("GAMES"),
("GROCERIES"),
("ELECTRONICS"),
("CLOTHES");

INSERT INTO PRODUCT VALUES
(1,"GTA V","Windows 7 and above with i5 processor and 8GB RAM",(SELECT CAT_ID FROM category WHERE CAT_NAME='GAMES')),
(2,"TSHIRT","SIZE-L with Black, Blue and White variations",(SELECT CAT_ID FROM category WHERE CAT_NAME='CLOTHES')),
(3,"ROG LAPTOP","Windows 10 with 15inch screen, i7 processor, 1TB SSD",(SELECT CAT_ID FROM category WHERE CAT_NAME='ELECTRONICS')),
(4,"OATS","Highly Nutritious from Nestle",(SELECT CAT_ID FROM category WHERE CAT_NAME='GROCERIES')),
(5,"HARRY POTTER","Best Collection of all time by J.K Rowling",(SELECT CAT_ID FROM category WHERE CAT_NAME='BOOKS')),
(6,"MILK","1L Toned MIlk",(SELECT CAT_ID FROM category WHERE CAT_NAME='GROCERIES')),
(7,"Boat EarPhones","1.5Meter long Dolby Atmos",(SELECT CAT_ID FROM category WHERE CAT_NAME='ELECTRONICS')),
(8,"Jeans","Stretchable Denim Jeans with various sizes and color",(SELECT CAT_ID FROM category WHERE CAT_NAME='CLOTHES')),
(9,"Project IGI","compatible with windows 7 and above",(SELECT CAT_ID FROM category WHERE CAT_NAME='GAMES')),
(10,"Hoodie","Black GUCCI for 13 yrs and above",(SELECT CAT_ID FROM category WHERE CAT_NAME='CLOTHES')),
(11,"Rich Dad Poor Dad","Written by RObert Kiyosaki",(SELECT CAT_ID FROM category WHERE CAT_NAME='BOOKS')),
(12,"Train Your Brain","By Shireen Stephen",(SELECT CAT_ID FROM category WHERE CAT_NAME='BOOKS'));

INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES 
(1,2,1500),
(3,5,30000), 
(5,1,3000), 
(2,3,2500),
(4,1,1000);
INSERT INTO supplier_pricing(PRO_ID,SUPP_ID,SUPP_PRICE) VALUES
(3,5,30000),
(12,2,780),
(12,4,789), 
(3,1,31000), 
(1,5,1450),
(4,2,999), 
(7,3,549), 
(7,4,529), 
(6,2,105), 
(6,1,99),
(2,5,2999), 
(5,2,2999);

INSERT INTO `ORDER`(ORD_ID,ORD_AMOUNT,ORD_DATE,CUS_ID,PRICING_ID) VALUES 
(101,1500,"2021-10-06",2,1),
(102,1000,"2021-10-12",3,5),
(103,30000,"2021-09-16",5,2),
(104,1500,"2021-10-05",1,1),
(105,3000,"2021-08-16",4,3),
(106,1450,"2021-08-18",1,9),
(107,789,"2021-09-01",3,7),
(108,780,"2021-09-07",5,6),
(109,3000,"2021-09-10",5,3),
(110,2500,"2021-09-10",2,4),
(111,1000,"2021-09-15",4,5),
(112,789,"2021-09-16",4,7),
(113,31000,"2021-09-16",1,8),
(114,1000,"2021-09-16",3,5),
(115,3000,"2021-09-16",5,3),
(116,99,"2021-09-17",2,14);

INSERT INTO rating(ORD_ID,RAT_RATSTARS) VALUES
(101,4),
(102,3), 
(103,1), 
(104,2), 
(105,4), 
(106,3), 
(107,4), 
(108,4), 
(109,3), 
(110,5), 
(111,3), 
(112,4), 
(113,2), 
(114,1), 
(115,1), 
(116,0);

select * from supplier;
select * from customer;
select * from category;
select * from product;
select * from supplier_pricing;
select * from `order`;
select * from rating;