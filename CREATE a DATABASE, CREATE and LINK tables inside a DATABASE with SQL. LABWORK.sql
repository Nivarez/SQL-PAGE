create database if not exists store; 
use store;

CREATE TABLE Customers (
    CustomerID INT auto_increment,
    CustFirstName VARCHAR(255),
    CustLastName VARCHAR(255),
    CustStreetAddress VARCHAR(255),
    CustCity VARCHAR(255),
    CustState VARCHAR(255),
    CustZipCode int,
    CustAreaCode int,
    CustPhoneNumber int,
    PRIMARY KEY (CustomerID)
    );
    
    CREATE TABLE Employees (
    EmployeeID INT auto_increment,
    EmpFirstName VARCHAR(255),
    EmpLastName VARCHAR(255),
    EmpStreetAddress VARCHAR(255),
	EmpCity varchar(255),
    EmpState varchar(255),
    EmpZipCode int,
    EmpAreaCode int,
    EmpPhoneNumber int,
    PRIMARY KEY (EmployeeID)
    );
    
    CREATE TABLE Orders (
    OrderNumber INT auto_increment,
    OrderDate date,
    ShipDate date,
    CustomerID int,
    EmployeeID int,
    OrderTotal float,
    PRIMARY KEY (OrderNumber),
    foreign key (CustomerID) references customers (customerID) on delete cascade,
    foreign key (EmployeeID) references Employees (EmployeeID) on delete cascade
);


CREATE TABLE CATEGORIES (
CategoryID int,
CategoryDescription varchar(255),
PRIMARY KEY (CategoryID)
);


CREATE TABLE PRODUCTS (
    ProductNumber INT auto_increment,
    ProductName VARCHAR(255),
    ProductDescription VARCHAR(255),
    RetailPrice int,
    QuantityOnHand int,
    CategoryID int,
    PRIMARY KEY (ProductNumber),
    foreign key (CategoryID) references Categories (CategoryID) on delete cascade
);


CREATE TABLE ORDER_DETAILS (
OrderNumber int,
ProductNumber int,
QuantityPrice int,
QuantityOrder int,
primary key (OrderNumber, ProductNumber),
foreign key (OrderNumber) references Orders (OrderNumber) on delete cascade,
foreign key (ProductNumber) references Products (ProductNumber) on delete cascade
);



 CREATE TABLE Vendors (
    VendorID INT auto_increment,
    VendName VARCHAR(255),
    VendStreetAddress VARCHAR(255),
	VendCity varchar(255),
    VendState varchar(255),
    VendZipCode int,
    VendPhoneNumber int,
    VendFaxNumber int,
    VendWebPage VARCHAR(255),
    VendEmailAddress VARCHAR(255),
    PRIMARY KEY (VendorID)
    );
    
    
   CREATE TABLE Product_vendor (
   ProductNumber int,
   VendorID int,
   WhloesalePrice int,
   DaysToDeliver VARCHAR(255),
   Primary key (ProductNumber, VendorID),
   foreign key (ProductNumber) references Products (ProductNumber) on delete cascade,
   foreign key (VendorID) references vendors (VendorID) on delete cascade
   );
   
   
   
   CREATE TABLE Orders_Archive (
    OrderNumber INT auto_increment,
    OrderDate date,
    ShipDate date,
    CustomerID int,
    EmployeeID int,
    OrderTotal float,
    PRIMARY KEY (OrderNumber)
    );
    
    
    
    CREATE TABLE Order_Details_Archive (
   OrderNumber int,
   ProductNumber int,
   QuotedPrice int,
   QuantityOrdered int,
   Primary key (OrderNumber, ProductNumber),
   foreign key (OrderNumber) references Orders_Archive (OrderNumber) on delete cascade
   );