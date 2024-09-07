# sqlbased
# Library Management System

## Overview

The Library Management System is a simple SQL-based project designed to manage books, members, and loans in a library. This project allows users to perform basic operations such as adding books, registering members, and tracking book loans.

## Features

- **Books Management**: Add, view, and manage books in the library.
- **Members Management**: Register and manage library members.
- **Loans Management**: Track book loans, including loan dates, due dates, and return dates.

## Database Schema

The project consists of three main tables:

1. **Books**
   - `BookID`: Primary Key
   - `Title`: Title of the book
   - `Author`: Author of the book
   - `PublicationYear`: Year the book was published
   - `Genre`: Genre of the book

2. **Members**
   - `MemberID`: Primary Key
   - `FirstName`: First name of the member
   - `LastName`: Last name of the member
   - `Email`: Email address of the member
   - `JoinDate`: Date the member joined the library

3. **Loans**
   - `LoanID`: Primary Key
   - `BookID`: Foreign Key referencing Books table
   - `MemberID`: Foreign Key referencing Members table
   - `LoanDate`: Date the book was loaned
   - `DueDate`: Date the book is due for return
   - `ReturnDate`: Date the book was returned (nullable)

## Getting Started

### Prerequisites

- A SQL database (e.g., MySQL, PostgreSQL)
- A SQL client (e.g., MySQL Workbench, pgAdmin)

### Installation

1. Clone the repository to your local machine:

   ```bash
   git clone https://github.com/your-username/library-management-system.git
