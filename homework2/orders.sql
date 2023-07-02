/*
3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE 
*/

DROP TABLE orders;

CREATE TABLE orders
(id INT PRIMARY KEY AUTO_INCREMENT,
employee_id VARCHAR(3) NOT NULL,
amount DECIMAL(5, 2) NOT NULL,
order_status VARCHAR(30) NOT NULL);

INSERT INTO orders (employee_id, amount, order_status)
VALUES
("e03", 15.00, "OPEN"),
("e01", 25.50, "OPEN"),
("e05", 100.70, "CLOSED"),
("e02", 22.18, "OPEN"),
("e04", 9.50, "CANCELLED");

SELECT * FROM orders;

SELECT id, employee_id, amount,
CASE 
WHEN order_status = "OPEN" THEN "Order is in open state"
WHEN order_status = "CLOSED" THEN "Order is closed"
WHEN order_status = "CANCELLED" THEN "Order is cancelled"
END full_order_status
FROM orders;