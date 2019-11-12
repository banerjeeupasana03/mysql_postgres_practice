CREATE DATABASE employeedb;
USE employeedb;
CREATE TABLE departments (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(32) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE jobs (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    job_name VARCHAR(32) NOT NULL,
    salary INT(7) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE jobs_departments (
    department_id INT NOT NULL,
    job_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (job_id) REFERENCES jobs(id),
    PRIMARY KEY (department_id, job_id)
);
CREATE TABLE addresses (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    unit INT,
    street VARCHAR(32),
    city VARCHAR(32) NOT NULL,
    province VARCHAR(32) NOT NULL,
    country VARCHAR(32) NOT NULL,
    zip VARCHAR(6) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE employees (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    job_id INT NOT NULL,
    department_id INT NOT NULL,
    address_id INT NOT NULL,
    first_name VARCHAR(16) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    age INT(3) NOT NULL,
    email VARCHAR(32) NOT NULL UNIQUE,
    phone INT(10) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (job_id) REFERENCES jobs(id),
    FOREIGN KEY (department_id) REFERENCES departments(id),
    FOREIGN KEY (address_id) REFERENCES addresses(id)
);

INSERT INTO departments (dept_name) VALUES ('marketing');
INSERT INTO departments (dept_name) VALUES ('designing');
INSERT INTO departments (dept_name) VALUES ('technology');
INSERT INTO departments (dept_name) VALUES ('administration');

INSERT INTO jobs (job_name, salary) VALUES ('designer', 80000);
INSERT INTO jobs (job_name, salary) VALUES ('junior_designer', 45000);
INSERT INTO jobs (job_name, salary) VALUES ('marketing_associate', 75000);
INSERT INTO jobs (job_name, salary) VALUES ('office_admin', 50000);
INSERT INTO jobs (job_name, salary) VALUES ('tech_lead', 130000);
INSERT INTO jobs (job_name, salary) VALUES ('data_analyst', 128000);
INSERT INTO jobs (job_name, salary) VALUES ('UI_designer', 68000);
INSERT INTO jobs (job_name, salary) VALUES ('security_developer', 129000);
INSERT INTO jobs (job_name, salary) VALUES ('platform_engineer', 135000);
INSERT INTO jobs (job_name, salary) VALUES ('marketing_manager', 80000);
INSERT INTO jobs (job_name, salary) VALUES ('CEO', 200000);
INSERT INTO jobs (job_name, salary) VALUES ('financial_manager', 84000);
INSERT INTO jobs (job_name, salary) VALUES ('accountant', 68000);
INSERT INTO jobs (job_name, salary) VALUES ('developer', 80000);

INSERT INTO jobs_departments (department_id, job_id) VALUES (1,3);
INSERT INTO jobs_departments (department_id, job_id) VALUES (1,10);
INSERT INTO jobs_departments (department_id, job_id) VALUES (2,1);
INSERT INTO jobs_departments (department_id, job_id) VALUES (2,2);
INSERT INTO jobs_departments (department_id, job_id) VALUES (2,7);
INSERT INTO jobs_departments (department_id, job_id) VALUES (3,5);
INSERT INTO jobs_departments (department_id, job_id) VALUES (3,6);
INSERT INTO jobs_departments (department_id, job_id) VALUES (3,8);
INSERT INTO jobs_departments (department_id, job_id) VALUES (3,9);
INSERT INTO jobs_departments (department_id, job_id) VALUES (3,14);
INSERT INTO jobs_departments (department_id, job_id) VALUES (4,4);
INSERT INTO jobs_departments (department_id, job_id) VALUES (4,11);
INSERT INTO jobs_departments (department_id, job_id) VALUES (4,12);
INSERT INTO jobs_departments (department_id, job_id) VALUES (4,13);

INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (5774, 'Victoria Drive', 'Vancouver', 'BC', 'CA', '34R56T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (5454, 'Victoria Drive', 'Vancouver', 'BC', 'CA', '34R56T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (5776, 'Commercial Drive', 'Vancouver', 'BC', 'CA', '36Y56T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (6564, 'Glen Drive', 'Seattle', 'WA', 'US', '347U6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (6414, 'Sophia Street', 'Seattle', 'WA', 'US', '3T2U6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (5124, 'Cambie Lane', 'Seattle', 'WA', 'US', '3T2U6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (8612, 'Roger Drive', 'Austin', 'TX', 'US', '34TW6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (8715, 'Picadily Street', 'Austin', 'TX', 'US', '38TQ6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (5633, 'Picadily Street', 'Austin', 'TX', 'US', '34R36T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (1266, 'Sophia Street', 'Seattle', 'WA', 'US', '3T2U0T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (8712, 'Margarite Way', 'Seattle', 'WA', 'US', '3T4U6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (9182, 'Roger Drive', 'Seattle', 'WA', 'US', '3TWU6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (2308, 'Marine Drive', 'Vancouver', 'BC', 'CA', '344Q6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (2136, 'Brodway and Cambie', 'Vancouver', 'BC', 'CA', '346R6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (8733, 'Burrard St', 'Vancouver', 'BC', 'CA', '38R56T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (5832, 'Water St', 'Vancouver', 'BC', 'CA', '34SA6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (8711, 'Commercial', 'Vancouver', 'BC', 'CA', '455W6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (1324, 'Roger Street', 'Austin', 'TX', 'US', '944V6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (6233, 'Marine St', 'Austin', 'TX', 'US', 'V4TQ6T');
INSERT INTO addresses (unit, street, city, province, country, zip) VALUES (8127, 'Waterfront Dr', 'Austin', 'TX', 'US', '21PQ6T');


INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (3,1,1,'Super','Man', 30, 'superman@super.com', 123456789);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (10,1,2,'Bat','Man', 28, 'batman@bat.com', 183698789);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (1,2,3,'John','Doe', 56, 'doejohn@mail.com', 879956789);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (2,2,4,'Steve','Carter', 40, 'stevecarter@super.com', 981456989);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (7,2,5,'Bill','Gates', 35, 'gatesbill@doe.com', 1277456789);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (5,3,6,'Magneto','Ryan', 30, 'ryanmagneto@marvel.com', 123923785);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (6,3,7,'Michael','Scott', 33, 'manmike@user.com', 644253789);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (8,3,8,'Pamela','Doe', 32, 'pam@user.com', 459008659);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (9,3,9,'Kelly','Kapoor', 27, 'kelly@thty.com', 873456339);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (14,3,10,'Angela','Kinsey', 50, 'kinsey@super.com', 155009739);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (4,4,11,'Meredith','Doe', 46, 'meredithdoe@super.com', 165486789);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (11,4,12,'Kevin','Malone', 29, 'malonek@mail.com', 154673789);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (6,3,13,'Darryl','Philbin', 43, 'dphilbin@mail.com', 670496703);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (8,3,14,'Erin','Scott', 30, 'serin@user.com', 981560456);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (2,2,15,'Andy','Bernard', 30, 'nardandy@super.com', 231654098);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (9,3,16,'Robert','California', 33, 'crobert@mail.com', 982167005);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (5,3,17,'Jan','Levinson', 32, 'janlevinson@super.com', 156865900);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (4,4,18,'Astrid','Levinson', 37, 'astridlevinsonn@user.com', 345608711);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (8,3,19,'Helena','Martin', 54, 'martinhelena@mail.com', 903278991);
INSERT INTO employees (job_id, department_id, address_id, first_name, last_name, age, email, phone) VALUES (5,3,20,'Dwight','Schrute', 36, 'dwightschrute@mail.com', 324095432);




