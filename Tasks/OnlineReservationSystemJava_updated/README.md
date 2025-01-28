# Online Reservation System

## Overview
This project is a web-based online reservation system implemented using Java, JSP, Servlets, and MySQL. The system includes modules for login, ticket reservation, and cancellation.

## Features
- **Login System**: Authorized users can log in using a username and password.
- **Reservation Module**: Users can book tickets by entering required details such as train number, class type, and journey details.
- **Cancellation Module**: Users can cancel tickets using a valid PNR number.

## Prerequisites
- Java Development Kit (JDK) 8 or higher
- Apache Tomcat 9 or higher
- MySQL Database
- Maven

## Setup Instructions
1. Clone or download this repository.
2. Import the project into your favorite IDE (e.g., IntelliJ, Eclipse).
3. Run the `schema.sql` file to create the database tables.
4. Configure the database connection in the `com.reservation.util.DBConnection` class.
5. Deploy the project to a Tomcat server.
6. Access the application at `http://localhost:8080/OnlineReservationSystem`.

## Directory Structure
- `src/main/java`: Contains Java source files.
- `src/main/webapp`: Contains JSP files and static resources.
- `database/schema.sql`: Database schema file.

## Dependencies
- `javax.servlet-api`: For servlet functionality.
- `mysql-connector-java`: For connecting to the MySQL database.

## Screenshots
![Login Page](screenshots/login.png)
![Reservation Page](screenshots/reservation.png)
![Cancellation Page](screenshots/cancellation.png)