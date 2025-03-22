create database if not exists sales;
use sales;

CREATE TABLE customers (
    customer_id INT,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    email_address VARCHAR(255),
    number_of_compliants INT,
    PRIMARY KEY (customer_id)
);

create table companies(
company_id int auto_increment,
headquaters_phone_numbers varchar(255),
company_name varchar (255)not null,
primary key(company_id)
);
value(001, 'Richard','Emmanuel'),
      (002,'Austine','Eroms'),
      (003,'Joe','Eko'),
      (004,'Joy','Stanley')
      ;
create table sales(
purchase_id int auto_increment,
date_of_purchase date,
customer_id int,
item_code varchar(10),
primary key (purchase_id),
foreign key (customer_id) references customers (customer_id) on delete cascade
);

insert into customers (customer_id, first_name, last_name)
value(001, 'Richard','Emmanuel'),
      (002,'Austine','Eroms'),
      (003,'Joe','Eko'),
      (004,'Joy','Stanley')
      ;
      
      alter table customers
      add unique key (email_address);
      
      alter table customers
      change column number_of_compliants number_of_compliants int default 0;
      