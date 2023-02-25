CREATE TABLE salesperson(
    salesperson_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE mechanic(
    mechanic_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    address1 VARCHAR(50),
    phone_num VARCHAR(20)
);

CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    vehicle_id_num VARCHAR(50),
    make VARCHAR,
    model VARCHAR,
    year1 VARCHAR
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    salesperson_id INTEGER,
    FOREIGN KEY (salesperson_id) REFERENCES salesperson(salesperson_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    invoice_date TIMESTAMP,
    invoice_amount INTEGER
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    service_ticket_amount VARCHAR(50),
    services_rendered VARCHAR(50),
    service_time TIMESTAMP,
    car_id INTEGER,
    FOREIGN KEY (car_id) REFERENCES car(car_id),
    customer_id INTEGER,
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE service_history(
    service_history_id SERIAL PRIMARY KEY,
    mechanic_id INTEGER,
    FOREIGN KEY (mechanic_id) REFERENCES mechanic(mechanic_id)
);

ALTER TABLE service_history
ADD service_ticket_id INTEGER,
ADD FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id);