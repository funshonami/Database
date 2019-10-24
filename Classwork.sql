use classwork;

CREATE TABLE Buyer (
BuyerName	Char(35)	NOT NULL,
Department	Char(30)	NOT NULL,
Position	Char(10)	NULL,
Supervisor	Char(35)	NULL,
CONSTRAINT	BUYER_PK	PRIMARY KEY(BuyerName)

);
use classwork;
CREATE TABLE Games  (
OrderNumber	    Integer				NOT NULL,
StoredNumber	Integer				NULL,
StoreZip		Char(9)				NULL,
OrderMonth		Char(12)			NOT NULL,
OrderYear		Integer				NOT NULL,
OrderTotal		Numeric(9,2)		NULL,
BuyerName		Char(35)			NOT NULL,
CONSTRAINT		Games_PK		PRIMARY KEY(OrderNumber),
CONSTRAINT		Games_FK		FOREIGN KEY(BuyerName)
					REFERENCES Buyer(BuyerName)
);

alter table buyer 
add post integer not null,
drop age;


INSERT INTO games VALUES (
	'01', '234', 'ABD', 'January', '2019','2000', 'Chris Ifogah');
INSERT INTO games VALUES (
	'02', '033', 'CAC', 'February', '2019','1200', 'Toyin Olorunfemi');
    
INSERT INTO BUYER VALUES (
	'Olufunsho Odunlami', 'Account', 'CEO', NULL);
INSERT INTO BUYER VALUES (
	'Chris Ifogah', 'Account', 'Manager', 'Olufunsho Odunlami');
  INSERT INTO BUYER VALUES (
	'Toyin Olorunfemi', 'Account', 'Director', 'Olufunsho Odunlami');  

