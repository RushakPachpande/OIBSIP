
-- Create the database
CREATE DATABASE online_exam;

-- Use the database
USE online_exam;

-- Create the users table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(255) NOT NULL,
    email VARCHAR(100),
    name VARCHAR(100)
);

-- Create the questions table
CREATE TABLE questions (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question TEXT NOT NULL,
    option_a VARCHAR(255) NOT NULL,
    option_b VARCHAR(255) NOT NULL,
    option_c VARCHAR(255) NOT NULL,
    option_d VARCHAR(255) NOT NULL,
    correct_option CHAR(1) NOT NULL
);

-- Insert sample data into the users table
INSERT INTO users (username, password, email, name) 
VALUES 
('user', '1234', 'user@example.com', 'Test User');

-- Insert 50 refined questions into the questions table
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is a class in OOP?', 'A blueprint for objects', 'A type of function', 'An instance of an object', 'A variable', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which of the following is not an OOP principle?', 'Encapsulation', 'Polymorphism', 'Abstraction', 'Recursion', 'D');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is inheritance in OOP?', 'A way to define variables', 'A way to reuse code', 'A method to delete objects', 'A process of instantiation', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What does JVM stand for?', 'Java Variable Model', 'Java Virtual Machine', 'Java Volatile Method', 'Java Version Manager', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which keyword is used to inherit a class in Java?', 'this', 'extends', 'implements', 'inherits', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which method is the entry point of a Java program?', 'start()', 'init()', 'main()', 'run()', 'C');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which SQL keyword is used to retrieve data?', 'SELECT', 'INSERT', 'UPDATE', 'DELETE', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What does SQL stand for?', 'Structured Query List', 'Simple Query Language', 'Structured Query Language', 'Systematic Query Language', 'C');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which SQL clause is used to filter records?', 'WHERE', 'ORDER BY', 'GROUP BY', 'FILTER', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What does HTML stand for?', 'HyperText Markup Language', 'HyperText Management Language', 'HyperText Media Language', 'HyperTool Markup Language', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which tag is used to create a hyperlink in HTML?', '<a>', '<link>', '<href>', '<hyperlink>', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which HTML tag is used to define an unordered list?', '<ul>', '<ol>', '<li>', '<list>', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What does CSS stand for?', 'Color Style Sheets', 'Cascading Style Sheets', 'Creative Style Sheets', 'Computer Style Sheets', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which property is used to change the background color in CSS?', 'color', 'background', 'background-color', 'bg-color', 'C');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which CSS property is used to change the text color of an element?', 'text-color', 'color', 'font-color', 'foreground', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which keyword is used to declare a variable in JavaScript?', 'var', 'let', 'const', 'All of the above', 'D');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which symbol is used for comments in JavaScript?', '//', '/*', '#', '--', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What does DOM stand for?', 'Document Object Model', 'Data Object Manager', 'Document Order Method', 'Data Object Model', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which keyword is used to define a function in Python?', 'function', 'def', 'fun', 'define', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What does the len() function do in Python?', 'Returns the length of an object', 'Deletes an object', 'Adds an item to a list', 'Sorts a list', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which data type is used to store True or False in Python?', 'int', 'str', 'bool', 'float', 'C');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is encapsulation in OOP?', 'Hiding implementation details', 'Using functions to modify data', 'Reusing code via inheritance', 'Creating multiple objects', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which of the following best defines polymorphism?', 'One function, multiple forms', 'Hiding data members', 'Reusing code', 'A class with many objects', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is the purpose of an abstract class in OOP?', 'To allow multiple inheritance', 'To define methods without implementations', 'To restrict object creation', 'To hide sensitive data', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which keyword in Java is used to create an object?', 'new', 'class', 'object', 'create', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What does \'super\' keyword do in Java?', 'Refers to the child class', 'Calls the parent class constructor', 'Declares a method static', 'Defines a superclass', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which of the following is not a Java feature?', 'Object-oriented', 'Platform-independent', 'Interpreted', 'Supports multiple inheritance', 'D');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is the default value of a local variable in Java?', '0', 'null', 'undefined', 'No default value', 'D');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which method is used to start a thread in Java?', 'start()', 'run()', 'execute()', 'begin()', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is the size of int in Java?', '2 bytes', '4 bytes', '8 bytes', 'Depends on the system', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which of the following is a marker interface in Java?', 'Serializable', 'Cloneable', 'Both A and B', 'None of the above', 'C');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which SQL statement is used to create a table?', 'MAKE TABLE', 'CREATE TABLE', 'ADD TABLE', 'SET TABLE', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which function is used to count rows in SQL?', 'SUM()', 'COUNT()', 'TOTAL()', 'ROWCOUNT()', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is the primary key in a database?', 'A unique identifier for a record', 'A column that can store duplicate values', 'An index for searching', 'None of the above', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which command is used to delete a table in SQL?', 'DELETE TABLE', 'DROP TABLE', 'REMOVE TABLE', 'TRUNCATE TABLE', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which SQL keyword is used to sort the result-set?', 'SORT', 'ORDER BY', 'GROUP BY', 'FILTER BY', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is the correct HTML tag for the largest heading?', '<heading>', '<h6>', '<head>', '<h1>', 'D');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which attribute is used to provide a unique identifier in HTML?', 'class', 'id', 'style', 'name', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which tag is used to insert a line break in HTML?', '<lb>', '<br>', '<break>', '<line>', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is the purpose of the <meta> tag in HTML?', 'To create hyperlinks', 'To define metadata about an HTML document', 'To create buttons', 'To include scripts', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which tag is used to create a table in HTML?', '<div>', '<table>', '<td>', '<tr>', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which property is used to make the text bold in CSS?', 'font-style', 'font-weight', 'text-decoration', 'font-bold', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which CSS property is used to change the font of an element?', 'font-family', 'font-style', 'font', 'font-type', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is the correct syntax to apply a background image in CSS?', 'background-image: url(image.jpg);', 'background: image(image.jpg);', 'image: background(image.jpg);', 'bg-image: url(image.jpg);', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which property is used to control the space between lines of text?', 'text-spacing', 'line-height', 'letter-spacing', 'text-height', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('How can you make a list display horizontally in CSS?', 'display: block;', 'list-style: none;', 'float: left;', 'display: flex;', 'D');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which type of variable is visible everywhere in a JavaScript function?', 'Local', 'Global', 'Both A and B', 'Static', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What is the purpose of the \'this\' keyword in JavaScript?', 'Refers to the current object', 'Declares a variable', 'Defines a class', 'Calls a method', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which method is used to add an element to the end of an array?', 'add()', 'push()', 'insert()', 'append()', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What does the \'typeof\' operator do in JavaScript?', 'Checks the type of an object or variable', 'Defines a new variable', 'Converts data types', 'Returns the length of a string', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which function is used to parse a string to an integer in JavaScript?', 'StringToInt()', 'parseInt()', 'Integer()', 'convert()', 'B');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which keyword is used to create a class in Python?', 'class', 'def', 'object', 'new', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('What does the \'break\' statement do in Python?', 'Exits the current loop', 'Skips the current iteration', 'Ends the program', 'Returns a value', 'A');
INSERT INTO questions (question, option_a, option_b, option_c, option_d, correct_option) VALUES ('Which operator is used to calculate the remainder in Python?', '//', '%', '/', 'mod', 'B');