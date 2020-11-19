
CREATE TABLE Customer (
	Customer_id VARCHAR2 (20) CONSTRAINT pk_customer PRIMARY KEY,
	Customer_Name VARCHAR2 (20) CONSTRAINT nn_customer NOT NULL,
	Customer_Tel Number,
);

CREATE TABLE Product (
	Product_id VARCHAR2 (20) CONSTRAINT pk_customer PRIMARY KEY,
	Product_Name VARCHAR2 (20) CONSTRAINT nn_customer NOT NULL,
	Price Number  unsigned CHECK (Price > 0),
);

CREATE TABLE Orders (
	Customer_id VARCHAR2 (20),
	Product_Name VARCHAR2 (20),
	Quantity NUMBER,
    Total_amount NUMBER,
);
Alter TABLE Orders ADD CONSTRAINT fk_orders1
FOREIGN KEY (Customer_id) REFERENCES Orders (Customer_id);

Alter TABLE Orders ADD CONSTRAINT fk_orders2
FOREIGN KEY (Product_Name) REFERENCES Orders (Product_Name);

ALTER TABLE Product ADD Category  VARCHAR2(20);

ALTER TABLE Orders ADD OrderDate DATE DEFAULT SYSDATE();