CREATE DATABASE internship_ms;
USE internship_ms;

CREATE TABLE users (
id INT AUTO_INCREMENT PRIMARY KEY,
role ENUM('admin','student','company'),
name VARCHAR(100),
email VARCHAR(100) UNIQUE,
password VARCHAR(255),
cv VARCHAR(255)
);

CREATE TABLE internships (
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(255),
description TEXT,
company_id INT,
FOREIGN KEY(company_id) REFERENCES users(id)
);

CREATE TABLE applications (
id INT AUTO_INCREMENT PRIMARY KEY,
student_id INT,
internship_id INT,
status ENUM('Applied','Shortlisted','Accepted','Rejected') DEFAULT 'Applied',
FOREIGN KEY(student_id) REFERENCES users(id),
FOREIGN KEY(internship_id) REFERENCES internships(id)
);

INSERT INTO users (role,name,email,password) VALUES ('admin','Admin','admin@ims.com', MD5('admin123'));
