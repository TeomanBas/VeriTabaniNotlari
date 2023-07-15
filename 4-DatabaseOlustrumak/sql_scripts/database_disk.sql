-- 5 farklı disk üzerine kurulacak bir database örneği
CREATE DATABASE Örnek
ON PRIMARY
(
NAME = Örnek,
FILENAME = 'disk1:\Örnek.mdf',
SIZE = 100MB,
MAXSIZE = 500GB,
FILEGROWTH = 10MB
),
(
NAME = Örnek_log,
FILENAME = 'disk1:\Örnek_log.ldf',
SIZE = 50MB,
MAXSIZE = 100GB,
FILEGROWTH = 5MB
),
-- kullanıcı tarafından belirlenen bir filegroup ismi
USER_DATA
(
NAME = Örnek_2,
FILENAME = 'disk2:\Örnek_2.ndf',
SIZE = 100MB,
MAXSIZE = 500GB,
FILEGROWTH = 10MB
),
(
NAME = Örnek_3,
FILENAME = 'disk3:\Örnek_3.ndf',
SIZE = 100MB,
MAXSIZE = 500GB,
FILEGROWTH = 10MB
),
(
NAME = Örnek_4,
FILENAME = 'disk4:\Örnek_4.ndf',
SIZE = 100MB,
MAXSIZE = 500GB,
FILEGROWTH = 10MB
),
(
NAME = Örnek_5,
FILENAME = 'disk5:\Örnek_5.ndf',
SIZE = 100MB,
MAXSIZE = 500GB,
FILEGROWTH = 10MB
)
LOG ON
(
NAME = Örnek_log,
FILENAME = 'disk1:\Örnek_log.ldf',
SIZE = 50MB,
MAXSIZE = 100GB,
FILEGROWTH = 5MB
)
