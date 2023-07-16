CREATE TABLE ExampleTable 
(PriKey int PRIMARY KEY,
timestamp);

CREATE TABLE ExampleTable2 
(PriKey int PRIMARY KEY,
VerCol rowversion);

insert into ExampleTable ( PriKey)VALUES(1)
insert into ExampleTable ( PriKey)VALUES(2)

insert into ExampleTable2 ( PriKey)VALUES(1)
insert into ExampleTable2 ( PriKey)VALUES(2)