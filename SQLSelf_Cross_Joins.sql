create database Staff
use Staff

CREATE TABLE Staff (
    staff_id INT PRIMARY KEY,
    first_name NVARCHAR(50),
    last_name NVARCHAR(50),
    email NVARCHAR(100),
    phone NVARCHAR(20),
    active BIT,
    store_id INT,
    manager_id INT NULL
);
INSERT INTO Staff (staff_id, first_name, last_name, email, phone, active, store_id, manager_id) VALUES
(1, 'Fabiola', 'Jackson', 'fabiola.jackson@bikes.shop', '(831) 555-5554', 1, 1, NULL),
(2, 'Mireya', 'Copeland', 'mireya.copeland@bikes.shop', '(831) 555-5555', 1, 1, 1),
(3, 'Genna', 'Serrano', 'genna.serrano@bikes.shop', '(831) 555-5556', 1, 1, 2),
(4, 'Virgie', 'Wiggins', 'virgie.wiggins@bikes.shop', '(831) 555-5557', 1, 1, 2),
(5, 'Jannette', 'David', 'jannette.david@bikes.shop', '(516) 379-4444', 1, 2, 3),
(6, 'Marcelene', 'Boyer', 'marcelene.boyer@bikes.shop', '(516) 379-4445', 1, 2, 5),
(7, 'Venita', 'Daniel', 'venita.daniel@bikes.shop', '(516) 379-4446', 1, 2, 5),
(8, 'Kali', 'Vargas', 'kali.vargas@bikes.shop', '(972) 530-5555', 1, 3, 7),
(9, 'Layla', 'Terrell', 'layla.terrell@bikes.shop', '(972) 530-5556', 1, 3, 7),
(10, 'Bernardine', 'Houston', 'bernardine.houston@bikes.shop', '(972) 530-5557', 1, 3, 7);
select * from Staff
SELECT
    e.first_name + ' ' + e.last_name employee,
    m.first_name + ' ' + m.last_name manager
FROM
    staff e
INNER JOIN staff m ON m.staff_id = e.manager_id
ORDER BY
    manager;

SELECT
    e.first_name + ' ' + e.last_name employee,
    m.first_name + ' ' + m.last_name manager
FROM
    staff e
INNER JOIN staff m ON m.staff_id = e.manager_id
ORDER BY
    manager;

SELECT 
    A.staff_id AS Staff1_ID,
    A.first_name AS Staff1_FirstName,
    A.last_name AS Staff1_LastName,
    B.staff_id AS Staff2_ID,
    B.first_name AS Staff2_FirstName,
    B.last_name AS Staff2_LastName
FROM 
    Staff A
CROSS JOIN 
    Staff B;



