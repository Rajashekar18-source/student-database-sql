-- Create Database
CREATE DATABASE student_db;
USE student_db;

-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dob DATE,
    gender ENUM('Male','Female','Other'),
    email VARCHAR(100) UNIQUE
);

-- Create Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100),
    credits INT
);

-- Create Enrollment Table (only once!)
CREATE TABLE Enrollment (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    semester VARCHAR(20),
    year INT,
    grade CHAR(2),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Insert Students
INSERT INTO Students (first_name, last_name, dob, gender, email) VALUES
('Rahul', 'Sharma', '2000-05-15', 'Male', 'rahul.sharma@example.com'),
('Priya', 'Verma', '1999-08-20', 'Female', 'priya.verma@example.com'),
('Amit', 'Singh', '2001-01-10', 'Male', 'amit.singh@example.com'),
('Sneha', 'Patel', '2000-11-05', 'Female', 'sneha.patel@example.com'),
('Arjun', 'Mehta', '1998-03-25', 'Male', 'arjun.mehta@example.com');

-- Insert Courses
INSERT INTO Courses (course_name, credits) VALUES
('Database Systems', 4),
('Operating Systems', 3),
('Data Structures', 4),
('Computer Networks', 3),
('Artificial Intelligence', 4);

-- Insert Enrollment
INSERT INTO Enrollment (student_id, course_id, semester, year, grade) VALUES
(1, 1, 'Spring', 2022, 'A'),
(1, 2, 'Spring', 2022, 'B'),
(2, 1, 'Spring', 2022, 'A'),
(2, 3, 'Fall', 2022, 'B'),
(3, 2, 'Spring', 2022, 'C'),
(3, 4, 'Fall', 2022, 'B'),
(4, 1, 'Fall', 2022, 'A'),
(4, 5, 'Fall', 2022, 'A'),
(5, 3, 'Spring', 2022, 'B'),
(5, 4, 'Spring', 2022, 'A');