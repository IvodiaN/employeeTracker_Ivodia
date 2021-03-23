-- ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '';
-- flush privileges;
-- drop database if it exist
DROP DATABASE IF EXISTS employees;
-- create database if it doesnt exist
CREATE DATABASE employees;
-- use database 
USE employees;

-- create department
CREATE TABLE department(
id INT AUTO_INCREMENT NOT NULL,
name VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);
-- add departments
INSERT INTO department(name)
VALUES("SALES");
INSERT INTO department(name)
VALUES("ENGINEERING");
INSERT INTO department(name)
VALUES("FINANCE");
INSERT INTO department(name)
VALUES("LEGAL");


 -- select departments
 SELECT * FROM department;
 
 
-- create department role
CREATE TABLE role(
id INT AUTO_INCREMENT NOT NULL,
title VARCHAR(30) NOT NULL,
salary DECIMAL(10,2) NOT NULL,
department_id INT NOT NULL,
PRIMARY KEY(id)
);

-- add roles
INSERT INTO role (title, salary, department_id)
VALUES ("Sales Lead", 100000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Salesperson", 80000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Software Engineer", 120000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Account Manager", 160000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Accountant", 125000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("Legal Team Lead", 250000, 4);
INSERT INTO role (title, salary, department_id)
VALUES ("Lawyer", 190000, 4);
-- SELECT ALL ROLE
SELECT * FROM role;
-- create employee
CREATE TABLE employee(
id INT AUTO_INCREMENT NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NOT NULL,
manager_id INT NOT NULL,
PRIMARY KEY(id)
);
-- add employee
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Mary", "smith", 1, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Richard", "Belk", 2, 1);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Adam", "Lee", 3, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Wick", "Sam", 4, 3);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Champ", "Ricks", 5, 5);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Zee", "Matts", 6, 5);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Eric", "Tid", 7, 7);
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Dees", "gig", 8, 7);
-- select all rows from employee
SELECT * FROM employee;


