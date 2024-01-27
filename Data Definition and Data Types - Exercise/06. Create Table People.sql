CREATE TABLE people(
id INT NOT NULL UNIQUE AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(200) NOT NULL,
picture BLOB,
height DOUBLE(6,2),
weight DOUBLE(6,2),
gender CHAR(1) NOT NULL,
birthdate DATE NOT NULL,
biography BLOB
);

INSERT INTO people(name, picture, height, weight, gender, birthdate, biography) VALUES
('Ivan', 'test', 1.89, 95.5, 'm', '1976-05-04', 'test'),
('Pesho', 'test1', 1.70, 90, 'm', '1978-06-01', 'test'),
('Georgi', 'test2', 1.90, 100.5, 'm', '1986-03-05', 'test'),
('Ani', 'test3', 1.60, 60.5, 'f', '1984-01-05', 'test'),
('Maria', 'test4', 1.66, 53.5, 'f', '1996-06-09', 'test');
