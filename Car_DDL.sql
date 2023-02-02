SELECT *
FROM salesperson;

CREATE TABLE salesperson (
    salesperson_ID SERIAL PRIMARY KEY,
    First_Name VARCHAR,
    Last_Name VARCHAR
);

CREATE TABLE car (
    car_ID SERIAL PRIMARY KEY,
    Serial_Number VARCHAR,
    Make VARCHAR,
    Model VARCHAR,
    Sale VARCHAR
)

CREATE TABLE customer (
    customer_ID SERIAL PRIMARY KEY,
    First_Name VARCHAR,
    Last_Name VARCHAR,
    Customer_Address VARCHAR,
    Phone_Number VARCHAR
);

CREATE TABLE mechanic (
    mechanic_ID SERIAL PRIMARY KEY,
    First_Name VARCHAR,
    Last_Name VARCHAR
);

CREATE TABLE invoice (
    invoice_ID SERIAL PRIMARY KEY,
    salesperson_ID INTEGER,
    customer_ID INTEGER,
    car_ID INTEGER,
    Phone_Number VARCHAR,
    Invoice_Date TIMESTAMP,
    FOREIGN KEY (salesperson_ID) REFERENCES salesperson(salesperson_ID),
    FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID),
    FOREIGN KEY (car_ID) REFERENCES car(car_ID)
);

CREATE TABLE service_ticket (
    ticket_id SERIAL PRIMARY KEY,
    car_ID INTEGER,
    Serial_Number VARCHAR,
    service_date TIMESTAMP,
    mechanic_ID INTEGER,
    customer_ID INTEGER,
    FOREIGN KEY (car_ID) REFERENCES car(car_ID),
    FOREIGN key (mechanic_ID) REFERENCES mechanic(mechanic_ID),
    FOREIGN KEY (customer_ID) REFERENCES customer(customer_ID)
);