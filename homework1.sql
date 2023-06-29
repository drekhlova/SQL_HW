-- Создаем базу данных по мобильным телефонам
CREATE DATABASE mobile;

USE mobile;

-- Создаем таблицу mobiles с мобильными телефонами
CREATE TABLE mobiles
(id INT PRIMARY KEY NOT NULL,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
ProductCount INT NOT NULL,
Price INT);

-- Заполняем созданную таблицу данными
INSERT INTO mobiles (id, ProductName, Manufacturer, ProductCount, Price)
VALUES
(1, "iPhone X", "Apple", 3, 76000), 
(2, "iPhone 8", "Apple", 2, 51000), 
(3, "Galaxy S9", "Samsung", 2, 56000), 
(4, "Galaxy S8", "Samsung", 1, 41000), 
(5, "P 20 Pro", "Huawei", 5, 36000);

-- Выводим из таблицы mobiles модель телефона, производителя и цену телефона, если в наличии больше 2 ед.
SELECT ProductName, Manufacturer, Price FROM mobiles
WHERE ProductCount > 2;

-- Выводим из таблицы mobiles все имеющиеся модели телефоном марки Samsung
SELECT * FROM mobiles
WHERE Manufacturer = "Samsung"; 