CREATE DATABASE sqlproject;

USE sqlproject;

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(50),
    PublicationYear INT,
    Genre VARCHAR(50)
);

INSERT INTO Books (BookID, Title, Author, PublicationYear, Genre)
VALUES
    (1, 'To Kill a Mockingbird', 'Harper Lee', 1960, 'Fiction'),
    (2, '1984', 'George Orwell', 1949, 'Science Fiction'),
    (3, 'The Great Gatsby', 'F. Scott Fitzgerald', 1925, 'Fiction'),
    (4, 'Pride and Prejudice', 'Jane Austen', 1813, 'Romance'),
    (5, 'The Catcher in the Rye', 'J.D. Salinger', 1951, 'Fiction');

CREATE TABLE Members (
    MemberID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Email VARCHAR(100),
    JoinDate DATE
);

INSERT INTO Members (MemberID, FirstName, LastName, Email, JoinDate)
VALUES
    (1, 'John', 'Doe', 'john.doe@example.com', '2022-01-01'),
    (2, 'Jane', 'Smith', 'jane.smith@example.com', '2023-03-15'),
    (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '2021-06-30'),
    (4, 'Emily', 'Brown', 'emily.brown@example.com', '2022-11-20'),
    (5, 'David', 'Wilson', 'david.wilson@example.com', '2023-05-01');

CREATE TABLE Loans (
    LoanID INT PRIMARY KEY,
    BookID INT,
    MemberID INT,
    LoanDate DATE,
    DueDate DATE,
    ReturnDate DATE,
    FOREIGN KEY (BookID) REFERENCES Books(BookID),
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID)
);

INSERT INTO Loans (LoanID, BookID, MemberID, LoanDate, DueDate, ReturnDate)
VALUES
    (1, 1, 1, '2023-06-01', '2023-06-15', '2023-06-12'),
    (2, 2, 2, '2023-07-01', '2023-07-15', '2023-07-10'),
    (3, 3, 1, '2023-08-01', '2023-08-15', NULL),
    (4, 4, 3, '2023-09-01', '2023-09-15', '2023-09-05'),
    (5, 5, 2, '2023-10-01', '2023-10-15', NULL);
SELECT * FROM Books;
SELECT * FROM Members;
SELECT * FROM Loans;
SELECT Title 
FROM Books
WHERE Author = 'Harper Lee';
SELECT FirstName, LastName
FROM Members
WHERE JoinDate > '2022-06-30';
SELECT b.Title
FROM Books b
JOIN Loans l ON b.BookID = l.BookID
WHERE l.ReturnDate IS NULL;