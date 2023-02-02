SELECT * 
FROM customer;

INSERT INTO customer(
    first_name,
    last_name,
    customer_address,
    phone_number
)
VALUES (
    'John',
    'Doe',
    '555 Thieves St.',
    '555-555-5555'
);

SELECT *
FROM salesperson;

INSERT INTO salesperson(
    first_name,
    last_name
)
VALUES (
    'Chris',
    'James'
);

SELECT *
FROM mechanic;

INSERT INTO mechanic(
    first_name,
    last_name
)
VALUES (
    'Josh',
    'Sales'
)

SELECT *
FROM Car;

INSERT INTO Car(
    serial_number,
    Make,
    Model,
    Sale
)
VALUES (
    'CK12345',
    'Toyota',
    'Camry',
    'Yes'
);