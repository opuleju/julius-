-- Create Patient Data Table
CREATE TABLE Patient Data (
    Patient ID INT PRIMARY KEY,
    Name VARCHAR (100) NOT NULL,
    Age INT NOT NULL,
    Contact Info VARCHAR (150) UNIQUE
);

-- Create Visit Record Table
CREATE TABLE Visit Record (
    Visit ID INT PRIMARY KEY,
    Patient ID INT,
    Visit Date DATE NOT NULL,
    Reason TEXT,
    FOREIGN KEY (Patient ID) REFERENCES Patient Data (Patient ID) ON DELETE CASCADE
);

-- Create Treatment Record Table
CREATE TABLE Treatment Record (
    Treatment ID INT PRIMARY KEY,
    Visit ID INT,
    Treatment Details TEXT,
    FOREIGN KEY (Visit ID) REFERENCES Visit Record (Visit ID) ON DELETE CASCADE
);

-- Create Lab Tests Table
CREATE TABLE Lab Tests (
    Test ID INT PRIMARY KEY,
    Visit ID INT,
    Test Type VARCHAR (100),
    Results TEXT,
    FOREIGN KEY (Visit ID) REFERENCES Visit Record (Visit ID) ON DELETE CASCADE
);

-- Create Resource Table
CREATE TABLE Resource (
    Resourced INT PRIMARY KEY,
    Resource Name VARCHAR (100) NOT NULL,
    Quantity INT NOT NULL
);

-- Create Supply Chain Table
CREATE TABLE Supply Chain (
    Supply ID INT PRIMARY KEY,
    Resourced INT,
    Supplier Name VARCHAR (100),
    Delivery Date DATE,
    FOREIGN KEY (Resourced) REFERENCES Resource (Resourced) ON DELETE CASCADE
);

-- Create User Role Table
CREATE TABLE User Role (
    Role ID INT PRIMARY KEY,
    Role Name VARCHAR (50) NOT NULL
);


