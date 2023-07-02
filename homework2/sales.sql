/*
1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300, используя функцию IF 
*/

CREATE TABLE sales
(id INT PRIMARY KEY AUTO_INCREMENT,
order_date DATE NOT NULL,
count_product INT NOT NULL);

INSERT INTO sales (order_date, count_product)
VALUES
("2022-01-01", 156),
("2022-01-02", 180),
("2022-01-03", 21),
("2022-01-04", 124),
("2022-01-05", 341);

SELECT * FROM sales;

SELECT
id "id_заказа",
IF(count_product < 100, "Маленький заказ",
    IF(count_product >= 100 AND count_product < 300, "Средний заказ",
        IF(count_product >= 300, "Большой заказ", "Неопределено"))) AS "Тип заказа"
FROM sales;