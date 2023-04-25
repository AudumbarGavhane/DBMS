-- show databases;
-- show tables;
-- use test1;

-- select * from cust_vehicle;




CREATE TABLE vehicle (
    Vid INT PRIMARY KEY,
    Vname VARCHAR(50),
    Price INT,
    `desc` VARCHAR(100)
);

-- select * from vehicle;


-- Customer table:

CREATE TABLE customer (
    Custid INT PRIMARY KEY,
    Cname VARCHAR(50),
    address VARCHAR(100)
);

-- Salesman table:

CREATE TABLE salesman (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(50),
    address VARCHAR(100)
);

-- Cust-Vehicle table:

CREATE TABLE cust_vehicle (
    Custid INT,
    Vid INT,
    Sid INT,
    Buy_price INT,
    PRIMARY KEY (Custid, Vid),
    FOREIGN KEY (Custid) REFERENCES customer(Custid),
    FOREIGN KEY (Vid) REFERENCES vehicle(Vid),
    FOREIGN KEY (Sid) REFERENCES salesman(Sid)
);



-- Inserting data into the Vehicle table:

INSERT INTO vehicle (Vid, Vname, Price,   `desc`)
VALUES
(1, 'Activa', 80000, 'ksldjfjksj'),
(2, 'Santro', 800000, 'kdjfkjsd'),
(3, 'Motor bike', 100000, 'fdkdfj');

-- Inserting data into the Customer table:

INSERT INTO customer (Custid, Cname, address)
VALUES
(1, 'Nilima', 'Pimpari'),
(2, 'Ganesh', 'Pune'),
(3, 'Pankaj', 'Mumbai');

-- Inserting data into the Salesman table:

INSERT INTO salesman (Sid, Sname, address)
VALUES
(10, 'Rajesh', 'Mumbai'),
(11, 'Seema', 'Pune'),
(13, 'Rakhi', 'Pune');

-- Inserting data into the Cust-Vehicle table:

INSERT INTO cust_vehicle (Custid, Vid, Sid, Buy_price)
VALUES
(1, 1, 10, 75000),
(1, 2, 10, 790000),
(2, 3, 11, 80000),
(3, 3, 11, 75000),
(3, 2, 10, 800000);
