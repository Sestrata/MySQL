CREATE TABLE categories(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
category VARCHAR(255) NOT NULL,
daily_rate DOUBLE(6,2),
weekly_rate DOUBLE(6,2),
monthly_rate DOUBLE(6,2),
weekend_rate DOUBLE(6,2)
);

INSERT INTO categories(category,daily_rate,weekly_rate,monthly_rate,weekend_rate) VALUE
('Bus', 1.2,4.6,7,5),
('Car', 1,2,3,4),
('SUV', 1,3,5,8);


CREATE TABLE cars(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
plate_number VARCHAR(30) NOT NULL UNIQUE,
make VARCHAR(255) NOT NULL,
model VARCHAR(255) NOT NULL,
car_year DATE,
category_id INT,
doors INT,
picture BLOB,
car_condition VARCHAR(255),
available BOOL
);

INSERT INTO cars(plate_number, make, model, car_year, category_id, doors, picture, car_condition, available) VALUES
('CB1111CB', 'Toyota', 'Corolla', '2000-05-05', 2, 5, 'BEST', 'GOOD', true),
('CB1112CB', 'KIA', 'K7', '2006-06-17', 2, 5, 'BEST', 'GOOD', false),
('CB1113CB', 'BMW', 'X6', '2024-06-05', 2, 5, 'BEST', 'GOOD', true);

CREATE TABLE employees(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(255) NOT NULL,
title VARCHAR(255) NOT NULL,
notes TEXT
);

INSERT INTO employees(first_name, last_name, title, notes) VALUES
('Georgi', 'Yomov', 'Senior', 'TEST'),
('Eli', 'Yaneva', 'Senior', 'TEST'),
('Maria', 'Ivanova', 'Senior', 'TEST');


CREATE TABLE customers(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
driver_licence_number INT NOT NULL UNIQUE,
full_name VARCHAR(255) NOT NULL,
address VARCHAR(255) NOT NULL,
city VARCHAR(60),
zip_code INT,
notes TEXT
);

INSERT INTO customers(driver_licence_number, full_name, address, city, zip_code, notes) VALUES
(123456, 'Stamat Ivanov', 'jk.Reduta', 'Sofia', 1505, 'Test'),
(123457, 'Ivan Ivanov', 'jk.Reduta', 'Sofia', 1505, 'Test'),
(123458, 'Maria Ivanova', 'jk.Reduta', 'Sofia', 1505, 'Test');

CREATE TABLE rental_orders(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
employee_id INT NOT NULL,
customer_id INT NOT NULL,
car_id INT NOT NULL,
car_condition VARCHAR(255),
tank_level INT,
kilometrage_start INT,
kilometrage_end INT,
total_kilometrage INT,
start_date DATE,
end_date DATE,
total_days INT,
rate_applied DOUBLE(6,2),
tax_rate DOUBLE(6,2),
order_status BOOL,
notes TEXT
);

INSERT INTO rental_orders(employee_id, customer_id, car_id, car_condition, tank_level, kilometrage_start, kilometrage_end, total_kilometrage, start_date, end_date, total_days, rate_applied, tax_rate, order_status, notes) VALUES
(1, 1, 1, 'GOOD', 100, 1111, 2222, 3333, '2022-12-05', '2022-12-06', 1, 1.2, 2.2, true, 'Finished'),
(2, 2, 2, 'GOOD', 100, 1111, 2222, 3333, '2022-12-05', '2022-12-06', 1, 1.2, 2.2, true, 'Finished'),
(3, 3, 3, 'GOOD', 100, 1111, 2222, 3333, '2022-12-05', '2022-12-06', 1, 1.2, 2.2, true, 'Finished');
