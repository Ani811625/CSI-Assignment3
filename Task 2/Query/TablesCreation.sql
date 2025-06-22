-- Students Table
CREATE TABLE Students (
    ID INT PRIMARY KEY,
    Name VARCHAR(100)
);

-- Friends Table
CREATE TABLE Friends (
    ID INT,
    Friend_ID INT
);

-- Packages Table
CREATE TABLE Packages (
    ID INT,
    Salary FLOAT
);
