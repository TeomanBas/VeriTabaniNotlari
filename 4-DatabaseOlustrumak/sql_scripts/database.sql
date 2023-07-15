CREATE DATABASE MESLEK
ON PRIMARY
(
NAME=prec4,
-- FILENAME='C:\Users\Pc\Desktop\Yeniklasör\MESLEK4.mdf',
-- NT Service\MSSQLSERVER kullanıcısının sadece aşağıdaki konuma okuma ve yazma izni vardır bunun için aşağıdaki şekilde
-- zaten halihazırda tutulan database dosyalarının yanınabir örnek oluşturuldu.eğer database dosyaları başaka bir dizine 
-- oluşturulmak istenirse Sql Server Configuration Manager üzerinden SQL Server (MSSQLSERVER) e özelliklerinden yeni bir kullnaıcı eklenebilir 
-- ancak bunun güvenlik için yapılmaması gereklidir yada bir dizin için NT Service\MSSQLSERVER kullanıcısına izin verilebilir
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\deneme\MESLEK4.mdf',
SIZE= 6 MB, MAXSIZE=200 MB, FILEGROWTH=20 MB
),
(
NAME=prec4_2,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\deneme\MESLEK4_2.ndf',
SIZE= 6 MB, MAXSIZE=20 MB, FILEGROWTH=20 MB
)
LOG ON
(
NAME=log4,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\deneme\log.ldf',
SIZE= 6 MB, MAXSIZE=20 MB, FILEGROWTH=20 MB
),
(
NAME=log4_2,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\deneme\log_1.ldf',
SIZE= 6 MB, MAXSIZE=20 MB, FILEGROWTH=2 MB
)