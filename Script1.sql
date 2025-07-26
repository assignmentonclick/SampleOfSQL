#Script 1
#Create Database

CREATE DATABASE LICSystem;
USE LICSystem;


#Customer Table

CREATE TABLE Customer (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Address TEXT,
    Contact VARCHAR(15),
    DOB DATE,
    Email VARCHAR(100),
    Nationality VARCHAR(50)
);

#Agent Table

CREATE TABLE Agent (
    AgentID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Branch VARCHAR(50),
    Contact VARCHAR(15),
    Email VARCHAR(100)
);

#Policy Table

CREATE TABLE Policy (
    PolicyID INT PRIMARY KEY AUTO_INCREMENT,
    PolicyName VARCHAR(100),
    CoverageAmount DECIMAL(10, 2),
    Premium DECIMAL(10, 2),
    Term INT,
    PolicyTypeID INT
);

#PolicyType Table

CREATE TABLE PolicyType (
    PolicyTypeID INT PRIMARY KEY AUTO_INCREMENT,
    TypeName VARCHAR(50),
    Description TEXT
);

#CustomerPolicy Table

CREATE TABLE CustomerPolicy (
    CustomerPolicyID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    PolicyID INT,
    StartDate DATE,
    EndDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID),
    FOREIGN KEY (PolicyID) REFERENCES Policy(PolicyID)
);

#Claim Table

CREATE TABLE Claim (
    ClaimID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerPolicyID INT,
    ClaimAmount DECIMAL(10, 2),
    ClaimDate DATE,
    Status VARCHAR(50),
    FOREIGN KEY (CustomerPolicyID) REFERENCES CustomerPolicy(CustomerPolicyID)
);

#Payment Table

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerPolicyID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    PaymentMode VARCHAR(50),
    FOREIGN KEY (CustomerPolicyID) REFERENCES CustomerPolicy(CustomerPolicyID)
);

#Nominee Table

CREATE TABLE Nominee (
    NomineeID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    Name VARCHAR(100),
    Relation VARCHAR(50),
    Contact VARCHAR(15),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

#Beneficiary Table

CREATE TABLE Beneficiary (
    BeneficiaryID INT PRIMARY KEY AUTO_INCREMENT,
    ClaimID INT,
    Name VARCHAR(100),
    Relation VARCHAR(50),
    Contact VARCHAR(15),
    FOREIGN KEY (ClaimID) REFERENCES Claim(ClaimID)
);

#Insert Sample Data

INSERT INTO Customer (Name, Address, Contact, DOB, Email, Nationality)
VALUES ('John Doe', '123 Main St', '9876543210', '1985-10-20', 'johndoe@gmail.com', 'Indian'),
	("Alice Johnson", "456 Elm St", "9876543211", "1990-05-14", "alice.johnson@example.com", "Indian"),
    ("Robert Brown", "789 Pine St", "9876543212", "1987-08-23", "robert.brown@example.com", "Indian"),
    ("Emily Davis", "321 Oak St", "9876543213", "1995-11-02", "emily.davis@example.com", "Indian"),
    ("Michael Smith", "654 Cedar St", "9876543214", "1992-03-18", "michael.smith@example.com", "Indian"),
    ("Sarah Wilson", "987 Birch St", "9876543215", "1989-06-30", "sarah.wilson@example.com", "Indian"),
    ("James Taylor", "123 Maple St", "9876543216", "1985-12-25", "james.taylor@example.com", "Indian"),
    ("Olivia Lee", "456 Walnut St", "9876543217", "1993-07-10", "olivia.lee@example.com", "Indian"),
    ("Daniel White", "789 Cherry St", "9876543218", "1991-01-05", "daniel.white@example.com", "Indian"),
    ("Sophia Harris", "321 Spruce St", "9876543219", "1988-09-15", "sophia.harris@example.com", "Indian");

select * from Customer;

INSERT INTO PolicyType (TypeName, Description)
VALUES ('Health Insurance', 'Covers medical expenses'),
       ('Life Insurance', 'Provides life coverage'),
       ("Home Insurance", "Covers damage to the home and property"),
	   ("Auto Insurance", "Covers vehicle-related damages and accidents"),
       ("Health Insurance", "Covers medical expenses for individuals and families"),
       ("Travel Insurance", "Covers unexpected incidents during travel"),
       ("Term Life Insurance", "Provides life coverage for a fixed term"),
       ("Whole Life Insurance", "Provides lifelong coverage and cash value"),
       ("Universal Life Insurance", "Provides flexible premiums and death benefits"),
       ("Critical Illness Insurance", "Covers serious illness-related medical costs");

select * from  PolicyType;

INSERT INTO Policy (PolicyName, CoverageAmount, Premium, Term, PolicyTypeID)
VALUES ('Term Plan', 500000.00, 5000.00, 10, 2),
	   ('Home Insurance', 1000000.00, 3000.00, 5, 1),
       ('Auto Insurance', 500000.00, 4000.00, 3, 2),
       ('Health Insurance', 200000.00, 2500.00, 1, 3),
       ('Travel Insurance', 100000.00, 1500.00, 1, 4),
       ('Term Life Insurance', 1000000.00, 6000.00, 10, 5),
       ('Whole Life Insurance', 2000000.00, 8000.00, 20, 6),
       ('Universal Life Insurance', 1500000.00, 7000.00, 15, 7),
       ('Critical Illness Insurance', 500000.00, 4000.00, 5, 8),
       ('Retirement Insurance', 1000000.00, 5500.00, 10, 3);

select * from Policy;

INSERT INTO CustomerPolicy (CustomerID, PolicyID, StartDate, EndDate, Status)
VALUES (1, 1, '2022-01-01', '2032-01-01', 'Active'),
	   (2, 2, '2022-01-01', '2027-01-01', 'Active'),
       (3, 3, '2023-02-01', '2026-02-01', 'Active'),
       (4, 4, '2024-03-01', '2025-03-01', 'Active'),
       (5, 5, '2023-04-01', '2024-04-01', 'Active'),
       (6, 6, '2021-05-01', '2031-05-01', 'Active'),
       (7, 7, '2022-06-01', '2042-06-01', 'Active'),
       (8, 8, '2024-07-01', '2039-07-01', 'Active'),
       (9, 9, '2022-08-01', '2027-08-01', 'Active'),
       (10, 10, '2023-09-01', '2028-09-01', 'Active');

select * from CustomerPolicy;