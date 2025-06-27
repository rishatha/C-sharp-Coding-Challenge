CREATE DATABASE InsuranceDB;

USE InsuranceDB;


CREATE TABLE [User] (
    UserId INT IDENTITY(1,1) PRIMARY KEY,
    Username VARCHAR(50),
    [Password] VARCHAR(50),
    Role VARCHAR(50));

CREATE TABLE Policy (
    PolicyId INT IDENTITY(1,1) PRIMARY KEY,
    PolicyName VARCHAR(100),
    CoverageAmount DECIMAL(18, 2),
    Premium DECIMAL(18, 2),
    Term INT);

CREATE TABLE Client (
    ClientId INT IDENTITY(1,1) PRIMARY KEY,
    ClientName VARCHAR(100),
    ContactInfo VARCHAR(100),
    PolicyId INT FOREIGN KEY REFERENCES Policy(PolicyId));

CREATE TABLE Claim (
    ClaimId INT IDENTITY(1,1) PRIMARY KEY,
    ClaimNumber VARCHAR(50),
    DateFiled DATE,
    ClaimAmount DECIMAL(18, 2),
    Status VARCHAR(50),
    PolicyId INT FOREIGN KEY REFERENCES Policy(PolicyId),
    ClientId INT FOREIGN KEY REFERENCES Client(ClientId));

CREATE TABLE Payment (
    PaymentId INT IDENTITY(1,1) PRIMARY KEY,
    PaymentDate DATE,
    PaymentAmount DECIMAL(18, 2),
    ClientId INT FOREIGN KEY REFERENCES Client(ClientId));


select * from payment;