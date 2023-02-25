INSERT INTO salesperson(
    first_name,
    last_name
) VALUES (
    'Farmer',
    'Will'),
    ('Paula',
    'Findlay'),
    ('Eric',
    'lagerstrom');

INSERT INTO mechanic(
    first_name,
    last_name
) VALUES (
    'Timmy',
    'Phillips'),
    ('Joe',
    'Skipper'),
    ('Katie',
    'Zaferes');

INSERT INTO customer(
    first_name,
    last_name,
    address1,
    phone_num
) VALUES (
    'Tommy',
    'Zaferes',
    '3333 NE street',
    5555555555),
    ('Jane',
    'Doe',
    '1234 NE Emptery Place',
    1234567890);

INSERT INTO car(
    vehicle_id_num,
    make,
    model,
    year1
) VALUES (
    111111111,
    'Saturn',
    'SL4',
    2001),
    (222222222,
    'Volve',
    'XC90',
    2006);

INSERT INTO invoice(
    salesperson_id,
    customer_id,
    car_id,
    invoice_date,
    invoice_amount
) VALUES (
    1,
    1,
    1,
    CURRENT_TIMESTAMP,
    15000
),
(
    2,
    2,
    2,
    CURRENT_TIMESTAMP,
    20000
);

INSERT INTO service_ticket(
    service_ticket_amount,
    services_rendered,
    service_time,
    car_id,
    customer_id
) VALUES (
    300,
    'Oil change and tire rotation',
    CURRENT_TIMESTAMP,
    1,
    1
),
(
    500,
    'Alignment',
    CURRENT_TIMESTAMP,
    2,
    2
);

INSERT INTO service_history(
    mechanic_id,
    service_ticket_id
) VALUES (
    1,
    1
),
(
    2,
    1
);

INSERT INTO service_history(
    mechanic_id,
    service_ticket_id
) VALUES (
    3,
    2
),
(
    2,
    2
);
