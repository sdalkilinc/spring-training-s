drop  table if exists employees;

create table EMPLOYEES(

                          id bigint not null,
                          name varchar(255),
                          primary key (id)

);

create table departments (
                             id int
                             department varchar(100),
                             division varchar(100),
                             primary key (id)
);

create table employees (
                           employee_id INT,
                           first_name VARCHAR(50),
                           last_name VARCHAR(50),
                           email VARCHAR(50),
                           hire_date DATE,

                           gender VARCHAR(1),
                           salary INT,

                           primary key (id)
);
