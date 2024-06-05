
/*-----Database Details------------------------*/
-- Driver Name: SQLiteJDBC
-- Driver Version: native
-- URL: jdbc:sqlite:TargetDatabases\Northwind.db
-- User Name: null
-- Supported Type: BLOB
-- Supported Type: INTEGER
-- Supported Type: NULL
-- Supported Type: REAL
-- Supported Type: TEXT

/*-----Create Sorted Table Statements------------------------*/ 
DROP TABLE IF EXISTS Categories;
CREATE TABLE IF NOT EXISTS Categories (
     CategoryID INT NOT NULL,
     CategoryName VARCHAR(15) NOT NULL,
     Description TEXT,
     Picture BLOB,
     PRIMARY KEY (CategoryID)
);

DROP TABLE IF EXISTS CustomerCustomerDemo;
CREATE TABLE IF NOT EXISTS CustomerCustomerDemo (
     CustomerID VARCHAR(5) NOT NULL,
     CustomerTypeID VARCHAR(10) NOT NULL,
     PRIMARY KEY (CustomerID, CustomerTypeID)
);

DROP TABLE IF EXISTS CustomerDemographics;
CREATE TABLE IF NOT EXISTS CustomerDemographics (
     CustomerTypeID VARCHAR(10) NOT NULL,
     CustomerDesc TEXT,
     PRIMARY KEY (CustomerTypeID)
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE IF NOT EXISTS Customers (
     CustomerID VARCHAR(5) NOT NULL,
     CompanyName VARCHAR(40) NOT NULL,
     ContactName VARCHAR(30),
     ContactTitle VARCHAR(30),
     Address VARCHAR(60),
     City VARCHAR(15),
     Region VARCHAR(15),
     PostalCode VARCHAR(10),
     Country VARCHAR(15),
     Phone VARCHAR(24),
     Fax VARCHAR(24),
     PRIMARY KEY (CustomerID)
);

DROP TABLE IF EXISTS Employees;
CREATE TABLE IF NOT EXISTS Employees (
     EmployeeID INT NOT NULL,
     LastName VARCHAR(20) NOT NULL,
     FirstName VARCHAR(10) NOT NULL,
     Title VARCHAR(30),
     TitleOfCourtesy VARCHAR(25),
     BirthDate TIMESTAMP,
     HireDate TIMESTAMP,
     Address VARCHAR(60),
     City VARCHAR(15),
     Region VARCHAR(15),
     PostalCode VARCHAR(10),
     Country VARCHAR(15),
     HomePhone VARCHAR(24),
     Extension VARCHAR(4),
     Photo BLOB,
     Notes TEXT,
     ReportsTo INT,
     PhotoPath VARCHAR(255),
     PRIMARY KEY (EmployeeID)
);

DROP TABLE IF EXISTS EmployeeTerritories;
CREATE TABLE IF NOT EXISTS EmployeeTerritories (
     EmployeeID INT NOT NULL,
     TerritoryID VARCHAR(20) NOT NULL,
     PRIMARY KEY (EmployeeID, TerritoryID)
);

DROP TABLE IF EXISTS Order Details;
CREATE TABLE IF NOT EXISTS Order Details (
     OrderID INT,
     ProductID INT,
     UnitPrice FLOAT(26),
     Quantity INT,
     Discount FLOAT(13),
     PRIMARY KEY (OrderID, ProductID)
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE IF NOT EXISTS Orders (
     OrderID INT NOT NULL,
     CustomerID VARCHAR(5),
     EmployeeID INT,
     OrderDate TIMESTAMP,
     RequiredDate TIMESTAMP,
     ShippedDate TIMESTAMP,
     ShipVia INT,
     Freight FLOAT(26),
     ShipName VARCHAR(40),
     ShipAddress VARCHAR(60),
     ShipCity VARCHAR(15),
     ShipRegion VARCHAR(15),
     ShipPostalCode VARCHAR(10),
     ShipCountry VARCHAR(15),
     PRIMARY KEY (OrderID)
);

DROP TABLE IF EXISTS Products;
CREATE TABLE IF NOT EXISTS Products (
     ProductID INT NOT NULL,
     ProductName VARCHAR(40) NOT NULL,
     SupplierID INT,
     CategoryID INT,
     QuantityPerUnit VARCHAR(20),
     UnitPrice FLOAT(26),
     UnitsInStock INT,
     UnitsOnOrder INT,
     ReorderLevel INT,
     Discontinued INT NOT NULL,
     PRIMARY KEY (ProductID)
);

DROP TABLE IF EXISTS Region;
CREATE TABLE IF NOT EXISTS Region (
     RegionID INT NOT NULL,
     RegionDescription VARCHAR(50) NOT NULL,
     PRIMARY KEY (RegionID)
);

DROP TABLE IF EXISTS Shippers;
CREATE TABLE IF NOT EXISTS Shippers (
     ShipperID INT NOT NULL,
     CompanyName VARCHAR(40) NOT NULL,
     Phone VARCHAR(24),
     PRIMARY KEY (ShipperID)
);

DROP TABLE IF EXISTS Suppliers;
CREATE TABLE IF NOT EXISTS Suppliers (
     SupplierID INT NOT NULL,
     CompanyName VARCHAR(40) NOT NULL,
     ContactName VARCHAR(30),
     ContactTitle VARCHAR(30),
     Address VARCHAR(60),
     City VARCHAR(15),
     Region VARCHAR(15),
     PostalCode VARCHAR(10),
     Country VARCHAR(15),
     Phone VARCHAR(24),
     Fax VARCHAR(24),
     HomePage TEXT,
     PRIMARY KEY (SupplierID)
);

DROP TABLE IF EXISTS Territories;
CREATE TABLE IF NOT EXISTS Territories (
     TerritoryID VARCHAR(20) NOT NULL,
     TerritoryDescription VARCHAR(50) NOT NULL,
     RegionID INT NOT NULL,
     PRIMARY KEY (TerritoryID)
);

DROP TABLE IF EXISTS Alphabetical list of products;
CREATE TABLE IF NOT EXISTS Alphabetical list of products (
     ProductID INT,
     ProductName VARCHAR(40),
     SupplierID INT,
     CategoryID INT,
     QuantityPerUnit VARCHAR(20),
     UnitPrice FLOAT(26),
     UnitsInStock INT,
     UnitsOnOrder INT,
     ReorderLevel INT,
     Discontinued INT,
     CategoryName VARCHAR(15),
     PRIMARY KEY)
);

DROP TABLE IF EXISTS Current Product List;
CREATE TABLE IF NOT EXISTS Current Product List (
     ProductID INT,
     ProductName VARCHAR(40),
     PRIMARY KEY)
);

DROP TABLE IF EXISTS Customer and Suppliers by City;
CREATE TABLE IF NOT EXISTS Customer and Suppliers by City (
     City VARCHAR(15),
     CompanyName VARCHAR(40),
     ContactName VARCHAR(30),
     Relationship ,
     PRIMARY KEY)
);

DROP TABLE IF EXISTS Order Details Extended;
CREATE TABLE IF NOT EXISTS Order Details Extended (
     OrderID INT,
     ProductID INT,
     ProductName VARCHAR(40),
     UnitPrice FLOAT(26),
     Quantity INT,
     Discount FLOAT(13),
     ExtendedPrice ,
     PRIMARY KEY)
);

DROP TABLE IF EXISTS Order Subtotals;
CREATE TABLE IF NOT EXISTS Order Subtotals (
     OrderID INT,
     Subtotal ,
     PRIMARY KEY)
);

DROP TABLE IF EXISTS Summary of Sales by Quarter;
CREATE TABLE IF NOT EXISTS Summary of Sales by Quarter (
     ShippedDate TIMESTAMP,
     OrderID INT,
     Subtotal ,
     PRIMARY KEY)
);

DROP TABLE IF EXISTS Summary of Sales by Year;
CREATE TABLE IF NOT EXISTS Summary of Sales by Year (
     ShippedDate TIMESTAMP,
     OrderID INT,
     Subtotal ,
     PRIMARY KEY)
);

DROP TABLE IF EXISTS Orders Qry;
CREATE TABLE IF NOT EXISTS Orders Qry (
     OrderID INT,
     CustomerID VARCHAR(5),
     EmployeeID INT,
     OrderDate TIMESTAMP,
     RequiredDate TIMESTAMP,
     ShippedDate TIMESTAMP,
     ShipVia INT,
     Freight FLOAT(26),
     ShipName VARCHAR(40),
     ShipAddress VARCHAR(60),
     ShipCity VARCHAR(15),
     ShipRegion VARCHAR(15),
     ShipPostalCode VARCHAR(10),
     ShipCountry VARCHAR(15),
     CompanyName VARCHAR(40),
     Address VARCHAR(60),
     City VARCHAR(15),
     Region VARCHAR(15),
     PostalCode VARCHAR(10),
     Country VARCHAR(15),
     PRIMARY KEY)
);

DROP TABLE IF EXISTS Products Above Average Price;
CREATE TABLE IF NOT EXISTS Products Above Average Price (
     ProductName VARCHAR(40),
     UnitPrice FLOAT(26),
     PRIMARY KEY)
);

DROP TABLE IF EXISTS Products by Category;
CREATE TABLE IF NOT EXISTS Products by Category (
     CategoryName VARCHAR(15),
     ProductName VARCHAR(40),
     QuantityPerUnit VARCHAR(20),
     UnitsInStock INT,
     Discontinued INT,
     PRIMARY KEY)
);


/*-----Insert Statements------------------------*/ 
INSERT INTO Categories VALUES (1, 'Beverages', Soft drinks, coffees, teas, beers, and ales, /);
INSERT INTO Categories VALUES (2, 'Condiments', Sweet and savory sauces, relishes, spreads, and seasonings, /);
INSERT INTO Categories VALUES (3, 'Confections', Desserts, candies, and sweet breads, /);
INSERT INTO Categories VALUES (4, 'Dairy Products', Cheeses, /);
INSERT INTO Categories VALUES (5, 'Grains/Cereals', Breads, crackers, pasta, and cereal, /);
INSERT INTO Categories VALUES (6, 'Meat/Poultry', Prepared meats, /);
INSERT INTO Categories VALUES (7, 'Produce', Dried fruit and bean curd, /);
INSERT INTO Categories VALUES (8, 'Seafood', Seaweed and fish, /);
INSERT INTO Customers VALUES ('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Obere Str. 57', 'Berlin', null, '12209', 'Germany', '030-0074321', '030-0076545');
INSERT INTO Customers VALUES ('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 'Avda. de la Constitución 2222', 'México D.F.', null, '05021', 'Mexico', '(5) 555-4729', '(5) 555-3745');
INSERT INTO Customers VALUES ('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Owner', 'Mataderos  2312', 'México D.F.', null, '05023', 'Mexico', '(5) 555-3932', null);
INSERT INTO Customers VALUES ('AROUT', 'Around the Horn', 'Thomas Hardy', 'Sales Representative', '120 Hanover Sq.', 'London', null, 'WA1 1DP', 'UK', '(171) 555-7788', '(171) 555-6750');
INSERT INTO Customers VALUES ('BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'Order Administrator', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden', '0921-12 34 65', '0921-12 34 67');
INSERT INTO Customers VALUES ('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Sales Representative', 'Forsterstr. 57', 'Mannheim', null, '68306', 'Germany', '0621-08460', '0621-08924');
INSERT INTO Customers VALUES ('BLONP', 'Blondesddsl père et fils', 'Frédérique Citeaux', 'Marketing Manager', '24, place Kléber', 'Strasbourg', null, '67000', 'France', '88.60.15.31', '88.60.15.32');
INSERT INTO Customers VALUES ('BOLID', 'Bólido Comidas preparadas', 'Martín Sommer', 'Owner', 'C/ Araquil, 67', 'Madrid', null, '28023', 'Spain', '(91) 555 22 82', '(91) 555 91 99');
INSERT INTO Customers VALUES ('BONAP', 'Bon app''', 'Laurence Lebihan', 'Owner', '12, rue des Bouchers', 'Marseille', null, '13008', 'France', '91.24.45.40', '91.24.45.41');
INSERT INTO Customers VALUES ('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Accounting Manager', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada', '(604) 555-4729', '(604) 555-3745');
INSERT INTO Customers VALUES ('BSBEV', 'B''s Beverages', 'Victoria Ashworth', 'Sales Representative', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK', '(171) 555-1212', null);
INSERT INTO Customers VALUES ('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Sales Agent', 'Cerrito 333', 'Buenos Aires', null, '1010', 'Argentina', '(1) 135-5555', '(1) 135-4892');
INSERT INTO Customers VALUES ('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Marketing Manager', 'Sierras de Granada 9993', 'México D.F.', null, '05022', 'Mexico', '(5) 555-3392', '(5) 555-7293');
INSERT INTO Customers VALUES ('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Owner', 'Hauptstr. 29', 'Bern', null, '3012', 'Switzerland', '0452-076545', null);
INSERT INTO Customers VALUES ('COMMI', 'Comércio Mineiro', 'Pedro Afonso', 'Sales Associate', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil', '(11) 555-7647', null);
INSERT INTO Customers VALUES ('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Sales Representative', 'Berkeley Gardens 12  Brewery', 'London', null, 'WX1 6LT', 'UK', '(171) 555-2282', '(171) 555-9199');
INSERT INTO Customers VALUES ('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Order Administrator', 'Walserweg 21', 'Aachen', null, '52066', 'Germany', '0241-039123', '0241-059428');
INSERT INTO Customers VALUES ('DUMON', 'Du monde entier', 'Janine Labrune', 'Owner', '67, rue des Cinquante Otages', 'Nantes', null, '44000', 'France', '40.67.88.88', '40.67.89.89');
INSERT INTO Customers VALUES ('EASTC', 'Eastern Connection', 'Ann Devon', 'Sales Agent', '35 King George', 'London', null, 'WX3 6FW', 'UK', '(171) 555-0297', '(171) 555-3373');
INSERT INTO Customers VALUES ('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria', '7675-3425', '7675-3426');
INSERT INTO Customers VALUES ('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Marketing Assistant', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil', '(11) 555-9857', null);
INSERT INTO Customers VALUES ('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Accounting Manager', 'C/ Moralzarzal, 86', 'Madrid', null, '28034', 'Spain', '(91) 555 94 44', '(91) 555 55 93');
INSERT INTO Customers VALUES ('FOLIG', 'Folies gourmandes', 'Martine Rancé', 'Assistant Sales Agent', '184, chaussée de Tournai', 'Lille', null, '59000', 'France', '20.16.10.16', '20.16.10.17');
INSERT INTO Customers VALUES ('FOLKO', 'Folk och fä HB', 'Maria Larsson', 'Owner', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden', '0695-34 67 21', null);
INSERT INTO Customers VALUES ('FRANK', 'Frankenversand', 'Peter Franken', 'Marketing Manager', 'Berliner Platz 43', 'München', null, '80805', 'Germany', '089-0877310', '089-0877451');
INSERT INTO Customers VALUES ('FRANR', 'France restauration', 'Carine Schmitt', 'Marketing Manager', '54, rue Royale', 'Nantes', null, '44000', 'France', '40.32.21.21', '40.32.21.20');
INSERT INTO Customers VALUES ('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Sales Representative', 'Via Monte Bianco 34', 'Torino', null, '10100', 'Italy', '011-4988260', '011-4988261');
INSERT INTO Customers VALUES ('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Sales Manager', 'Jardim das rosas n. 32', 'Lisboa', null, '1675', 'Portugal', '(1) 354-2534', '(1) 354-2535');
INSERT INTO Customers VALUES ('GALED', 'Galería del gastrónomo', 'Eduardo Saavedra', 'Marketing Manager', 'Rambla de Cataluña, 23', 'Barcelona', null, '08022', 'Spain', '(93) 203 4560', '(93) 203 4561');
INSERT INTO Customers VALUES ('GODOS', 'Godos Cocina Típica', 'José Pedro Freyre', 'Sales Manager', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain', '(95) 555 82 82', null);
INSERT INTO Customers VALUES ('GOURL', 'Gourmet Lanchonetes', 'André Fonseca', 'Sales Associate', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil', '(11) 555-9482', null);
INSERT INTO Customers VALUES ('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Marketing Manager', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA', '(503) 555-7555', null);
INSERT INTO Customers VALUES ('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Owner', '5ª Ave. Los Palos Grande', 'Caracas', 'DF', '1081', 'Venezuela', '(2) 283-2951', '(2) 283-3397');
INSERT INTO Customers VALUES ('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Accounting Manager', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil', '(21) 555-0091', '(21) 555-8765');
INSERT INTO Customers VALUES ('HILAA', 'HILARION-Abastos', 'Carlos Hernández', 'Sales Representative', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela', '(5) 555-1340', '(5) 555-1948');
INSERT INTO Customers VALUES ('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Sales Representative', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA', '(503) 555-6874', '(503) 555-2376');
INSERT INTO Customers VALUES ('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Sales Associate', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland', '2967 542', '2967 3333');
INSERT INTO Customers VALUES ('ISLAT', 'Island Trading', 'Helen Bennett', 'Marketing Manager', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK', '(198) 555-8888', null);
INSERT INTO Customers VALUES ('KOENE', 'Königlich Essen', 'Philip Cramer', 'Sales Associate', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany', '0555-09876', null);
INSERT INTO Customers VALUES ('LACOR', 'La corne d''abondance', 'Daniel Tonini', 'Sales Representative', '67, avenue de l''Europe', 'Versailles', null, '78000', 'France', '30.59.84.10', '30.59.85.11');
INSERT INTO Customers VALUES ('LAMAI', 'La maison d''Asie', 'Annette Roulet', 'Sales Manager', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France', '61.77.61.10', '61.77.61.11');
INSERT INTO Customers VALUES ('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Marketing Assistant', '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada', '(604) 555-3392', '(604) 555-7293');
INSERT INTO Customers VALUES ('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Marketing Manager', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA', '(509) 555-7969', '(509) 555-6221');
INSERT INTO Customers VALUES ('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Sales Representative', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany', '069-0245984', '069-0245874');
INSERT INTO Customers VALUES ('LETSS', 'Let''s Stop N Shop', 'Jaime Yorres', 'Owner', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA', '(415) 555-5938', null);
INSERT INTO Customers VALUES ('LILAS', 'LILA-Supermercado', 'Carlos González', 'Accounting Manager', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela', '(9) 331-6954', '(9) 331-7256');
INSERT INTO Customers VALUES ('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Owner', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', '(8) 34-56-12', '(8) 34-93-93');
INSERT INTO Customers VALUES ('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Sales Manager', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA', '(503) 555-9573', '(503) 555-9646');
INSERT INTO Customers VALUES ('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Marketing Manager', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy', '035-640230', '035-640231');
INSERT INTO Customers VALUES ('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Sales Agent', 'Rue Joseph-Bens 532', 'Bruxelles', null, 'B-1180', 'Belgium', '(02) 201 24 67', '(02) 201 24 68');
INSERT INTO Customers VALUES ('MEREP', 'Mère Paillarde', 'Jean Fresnière', 'Marketing Assistant', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-8054', '(514) 555-8055');
INSERT INTO Customers VALUES ('MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Marketing Assistant', 'Heerstr. 22', 'Leipzig', null, '04179', 'Germany', '0342-023176', null);
INSERT INTO Customers VALUES ('NORTS', 'North/South', 'Simon Crowther', 'Sales Associate', 'South House 300 Queensbridge', 'London', null, 'SW7 1RZ', 'UK', '(171) 555-7733', '(171) 555-2530');
INSERT INTO Customers VALUES ('OCEAN', 'Océano Atlántico Ltda.', 'Yvonne Moncada', 'Sales Agent', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', null, '1010', 'Argentina', '(1) 135-5333', '(1) 135-5535');
INSERT INTO Customers VALUES ('OLDWO', 'Old World Delicatessen', 'Rene Phillips', 'Sales Representative', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA', '(907) 555-7584', '(907) 555-2880');
INSERT INTO Customers VALUES ('OTTIK', 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Owner', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany', '0221-0644327', '0221-0765721');
INSERT INTO Customers VALUES ('PARIS', 'Paris spécialités', 'Marie Bertrand', 'Owner', '265, boulevard Charonne', 'Paris', null, '75012', 'France', '(1) 42.34.22.66', '(1) 42.34.22.77');
INSERT INTO Customers VALUES ('PERIC', 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Sales Representative', 'Calle Dr. Jorge Cash 321', 'México D.F.', null, '05033', 'Mexico', '(5) 552-3745', '(5) 545-3745');
INSERT INTO Customers VALUES ('PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Sales Manager', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria', '6562-9722', '6562-9723');
INSERT INTO Customers VALUES ('PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Sales Representative', 'Estrada da saúde n. 58', 'Lisboa', null, '1756', 'Portugal', '(1) 356-5634', null);
INSERT INTO Customers VALUES ('QUEDE', 'Que Delícia', 'Bernardo Batista', 'Accounting Manager', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil', '(21) 555-4252', '(21) 555-4545');
INSERT INTO Customers VALUES ('QUEEN', 'Queen Cozinha', 'Lúcia Carvalho', 'Marketing Assistant', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil', '(11) 555-1189', null);
INSERT INTO Customers VALUES ('QUICK', 'QUICK-Stop', 'Horst Kloss', 'Accounting Manager', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany', '0372-035188', null);
INSERT INTO Customers VALUES ('RANCH', 'Rancho grande', 'Sergio Gutiérrez', 'Sales Representative', 'Av. del Libertador 900', 'Buenos Aires', null, '1010', 'Argentina', '(1) 123-5555', '(1) 123-5556');
INSERT INTO Customers VALUES ('RATTC', 'Rattlesnake Canyon Grocery', 'Paula Wilson', 'Assistant Sales Representative', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA', '(505) 555-5939', '(505) 555-3620');
INSERT INTO Customers VALUES ('REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Sales Associate', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy', '0522-556721', '0522-556722');
INSERT INTO Customers VALUES ('RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Assistant Sales Agent', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil', '(21) 555-3412', null);
INSERT INTO Customers VALUES ('RICSU', 'Richter Supermarkt', 'Michael Holz', 'Sales Manager', 'Grenzacherweg 237', 'Genève', null, '1203', 'Switzerland', '0897-034214', null);
INSERT INTO Customers VALUES ('ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Accounting Manager', 'Gran Vía, 1', 'Madrid', null, '28001', 'Spain', '(91) 745 6200', '(91) 745 6210');
INSERT INTO Customers VALUES ('SANTG', 'Santé Gourmet', 'Jonas Bergulfsen', 'Owner', 'Erling Skakkes gate 78', 'Stavern', null, '4110', 'Norway', '07-98 92 35', '07-98 92 47');
INSERT INTO Customers VALUES ('SAVEA', 'Save-a-lot Markets', 'Jose Pavarotti', 'Sales Representative', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA', '(208) 555-8097', null);
INSERT INTO Customers VALUES ('SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Sales Manager', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK', '(171) 555-1717', '(171) 555-5646');
INSERT INTO Customers VALUES ('SIMOB', 'Simons bistro', 'Jytte Petersen', 'Owner', 'Vinbæltet 34', 'Kobenhavn', null, '1734', 'Denmark', '31 12 34 56', '31 13 35 57');
INSERT INTO Customers VALUES ('SPECD', 'Spécialités du monde', 'Dominique Perrier', 'Marketing Manager', '25, rue Lauriston', 'Paris', null, '75016', 'France', '(1) 47.55.60.10', '(1) 47.55.60.20');
INSERT INTO Customers VALUES ('SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Sales Manager', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA', '(307) 555-4680', '(307) 555-6525');
INSERT INTO Customers VALUES ('SUPRD', 'Suprêmes délices', 'Pascale Cartrain', 'Accounting Manager', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium', '(071) 23 67 22 20', '(071) 23 67 22 21');
INSERT INTO Customers VALUES ('THEBI', 'The Big Cheese', 'Liz Nixon', 'Marketing Manager', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA', '(503) 555-3612', null);
INSERT INTO Customers VALUES ('THECR', 'The Cracker Box', 'Liu Wong', 'Marketing Assistant', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA', '(406) 555-5834', '(406) 555-8083');
INSERT INTO Customers VALUES ('TOMSP', 'Toms Spezialitäten', 'Karin Josephs', 'Marketing Manager', 'Luisenstr. 48', 'Münster', null, '44087', 'Germany', '0251-031259', '0251-035695');
INSERT INTO Customers VALUES ('TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Owner', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico', '(5) 555-2933', null);
INSERT INTO Customers VALUES ('TRADH', 'Tradição Hipermercados', 'Anabela Domingues', 'Sales Representative', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil', '(11) 555-2167', '(11) 555-2168');
INSERT INTO Customers VALUES ('TRAIH', 'Trail''s Head Gourmet Provisioners', 'Helvetius Nagy', 'Sales Associate', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA', '(206) 555-8257', '(206) 555-2174');
INSERT INTO Customers VALUES ('VAFFE', 'Vaffeljernet', 'Palle Ibsen', 'Sales Manager', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark', '86 21 32 43', '86 22 33 44');
INSERT INTO Customers VALUES ('VICTE', 'Victuailles en stock', 'Mary Saveley', 'Sales Agent', '2, rue du Commerce', 'Lyon', null, '69004', 'France', '78.32.54.86', '78.32.54.87');
INSERT INTO Customers VALUES ('VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Accounting Manager', '59 rue de l''Abbaye', 'Reims', null, '51100', 'France', '26.47.15.10', '26.47.15.11');
INSERT INTO Customers VALUES ('WANDK', 'Die Wandernde Kuh', 'Rita Müller', 'Sales Representative', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany', '0711-020361', '0711-035428');
INSERT INTO Customers VALUES ('WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Accounting Manager', 'Torikatu 38', 'Oulu', null, '90110', 'Finland', '981-443655', '981-443655');
INSERT INTO Customers VALUES ('WELLI', 'Wellington Importadora', 'Paula Parente', 'Sales Manager', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil', '(14) 555-8122', null);
INSERT INTO Customers VALUES ('WHITC', 'White Clover Markets', 'Karl Jablonski', 'Owner', '305 - 14th Ave. S. Suite 3B', 'Seattle', 'WA', '98128', 'USA', '(206) 555-4112', '(206) 555-4115');
INSERT INTO Customers VALUES ('WILMK', 'Wilman Kala', 'Matti Karttunen', 'Owner/Marketing Assistant', 'Keskuskatu 45', 'Helsinki', null, '21240', 'Finland', '90-224 8858', '90-224 8858');
INSERT INTO Customers VALUES ('WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Owner', 'ul. Filtrowa 68', 'Warszawa', null, '01-012', 'Poland', '(26) 642-7012', '(26) 642-7012');
INSERT INTO Employees VALUES (1, 'Davolio', 'Nancy', 'Sales Representative', 'Ms.', '12/8/1948 12:00:00 AM', '5/1/1992 12:00:00 AM', '507 - 20th Ave. E.
Apt. 2A', 'Seattle', 'WA', '98122', 'USA', '(206) 555-9857', '5467', /, Education includes a BA in psychology from Colorado State University in 1970.  She also completed "The Art of the Cold Call."  Nancy is a member of Toastmasters International., 2, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO Employees VALUES (2, 'Fuller', 'Andrew', 'Vice President, Sales', 'Dr.', '2/19/1952 12:00:00 AM', '8/14/1992 12:00:00 AM', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'USA', '(206) 555-9482', '3457', /, Andrew received his BTS commercial in 1974 and a Ph.D. in international marketing from the University of Dallas in 1981.  He is fluent in French and Italian and reads German.  He joined the company as a sales representative, was promoted to sales manager in January 1992 and to vice president of sales in March 1993.  Andrew is a member of the Sales Management Roundtable, the Seattle Chamber of Commerce, and the Pacific Rim Importers Association., null, 'http://accweb/emmployees/fuller.bmp');
INSERT INTO Employees VALUES (3, 'Leverling', 'Janet', 'Sales Representative', 'Ms.', '8/30/1963 12:00:00 AM', '4/1/1992 12:00:00 AM', '722 Moss Bay Blvd.', 'Kirkland', 'WA', '98033', 'USA', '(206) 555-3412', '3355', /, Janet has a BS degree in chemistry from Boston College (1984).  She has also completed a certificate program in food retailing management.  Janet was hired as a sales associate in 1991 and promoted to sales representative in February 1992., 2, 'http://accweb/emmployees/leverling.bmp');
INSERT INTO Employees VALUES (4, 'Peacock', 'Margaret', 'Sales Representative', 'Mrs.', '9/19/1937 12:00:00 AM', '5/3/1993 12:00:00 AM', '4110 Old Redmond Rd.', 'Redmond', 'WA', '98052', 'USA', '(206) 555-8122', '5176', /, Margaret holds a BA in English literature from Concordia College (1958) and an MA from the American Institute of Culinary Arts (1966).  She was assigned to the London office temporarily from July through November 1992., 2, 'http://accweb/emmployees/peacock.bmp');
INSERT INTO Employees VALUES (5, 'Buchanan', 'Steven', 'Sales Manager', 'Mr.', '3/4/1955 12:00:00 AM', '10/17/1993 12:00:00 AM', '14 Garrett Hill', 'London', null, 'SW1 8JR', 'UK', '(71) 555-4848', '3453', /, Steven Buchanan graduated from St. Andrews University, Scotland, with a BSC degree in 1976.  Upon joining the company as a sales representative in 1992, he spent 6 months in an orientation program at the Seattle office and then returned to his permanent post in London.  He was promoted to sales manager in March 1993.  Mr. Buchanan has completed the courses "Successful Telemarketing" and "International Sales Management."  He is fluent in French., 2, 'http://accweb/emmployees/buchanan.bmp');
INSERT INTO Employees VALUES (6, 'Suyama', 'Michael', 'Sales Representative', 'Mr.', '7/2/1963 12:00:00 AM', '10/17/1993 12:00:00 AM', 'Coventry House
Miner Rd.', 'London', null, 'EC2 7JR', 'UK', '(71) 555-7773', '428', /, Michael is a graduate of Sussex University (MA, economics, 1983) and the University of California at Los Angeles (MBA, marketing, 1986).  He has also taken the courses "Multi-Cultural Selling" and "Time Management for the Sales Professional."  He is fluent in Japanese and can read and write French, Portuguese, and Spanish., 5, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO Employees VALUES (7, 'King', 'Robert', 'Sales Representative', 'Mr.', '5/29/1960 12:00:00 AM', '1/2/1994 12:00:00 AM', 'Edgeham Hollow
Winchester Way', 'London', null, 'RG1 9SP', 'UK', '(71) 555-5598', '465', /, Robert King served in the Peace Corps and traveled extensively before completing his degree in English at the University of Michigan in 1992, the year he joined the company.  After completing a course entitled "Selling in Europe," he was transferred to the London office in March 1993., 5, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO Employees VALUES (8, 'Callahan', 'Laura', 'Inside Sales Coordinator', 'Ms.', '1/9/1958 12:00:00 AM', '3/5/1994 12:00:00 AM', '4726 - 11th Ave. N.E.', 'Seattle', 'WA', '98105', 'USA', '(206) 555-1189', '2344', /, Laura received a BA in psychology from the University of Washington.  She has also completed a course in business French.  She reads and writes French., 2, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO Employees VALUES (9, 'Dodsworth', 'Anne', 'Sales Representative', 'Ms.', '1/27/1966 12:00:00 AM', '11/15/1994 12:00:00 AM', '7 Houndstooth Rd.', 'London', null, 'WG2 7LT', 'UK', '(71) 555-4444', '452', /, Anne has a BA degree in English from St. Lawrence College.  She is fluent in French and German., 5, 'http://accweb/emmployees/davolio.bmp');
INSERT INTO EmployeeTerritories VALUES (1, '06897');
INSERT INTO EmployeeTerritories VALUES (1, '19713');
INSERT INTO EmployeeTerritories VALUES (2, '01581');
INSERT INTO EmployeeTerritories VALUES (2, '01730');
INSERT INTO EmployeeTerritories VALUES (2, '01833');
INSERT INTO EmployeeTerritories VALUES (2, '02116');
INSERT INTO EmployeeTerritories VALUES (2, '02139');
INSERT INTO EmployeeTerritories VALUES (2, '02184');
INSERT INTO EmployeeTerritories VALUES (2, '40222');
INSERT INTO EmployeeTerritories VALUES (3, '30346');
INSERT INTO EmployeeTerritories VALUES (3, '31406');
INSERT INTO EmployeeTerritories VALUES (3, '32859');
INSERT INTO EmployeeTerritories VALUES (3, '33607');
INSERT INTO EmployeeTerritories VALUES (4, '20852');
INSERT INTO EmployeeTerritories VALUES (4, '27403');
INSERT INTO EmployeeTerritories VALUES (4, '27511');
INSERT INTO EmployeeTerritories VALUES (5, '02903');
INSERT INTO EmployeeTerritories VALUES (5, '07960');
INSERT INTO EmployeeTerritories VALUES (5, '08837');
INSERT INTO EmployeeTerritories VALUES (5, '10019');
INSERT INTO EmployeeTerritories VALUES (5, '10038');
INSERT INTO EmployeeTerritories VALUES (5, '11747');
INSERT INTO EmployeeTerritories VALUES (5, '14450');
INSERT INTO EmployeeTerritories VALUES (6, '85014');
INSERT INTO EmployeeTerritories VALUES (6, '85251');
INSERT INTO EmployeeTerritories VALUES (6, '98004');
INSERT INTO EmployeeTerritories VALUES (6, '98052');
INSERT INTO EmployeeTerritories VALUES (6, '98104');
INSERT INTO EmployeeTerritories VALUES (7, '60179');
INSERT INTO EmployeeTerritories VALUES (7, '60601');
INSERT INTO EmployeeTerritories VALUES (7, '80202');
INSERT INTO EmployeeTerritories VALUES (7, '80909');
INSERT INTO EmployeeTerritories VALUES (7, '90405');
INSERT INTO EmployeeTerritories VALUES (7, '94025');
INSERT INTO EmployeeTerritories VALUES (7, '94105');
INSERT INTO EmployeeTerritories VALUES (7, '95008');
INSERT INTO EmployeeTerritories VALUES (7, '95054');
INSERT INTO EmployeeTerritories VALUES (7, '95060');
INSERT INTO EmployeeTerritories VALUES (8, '19428');
INSERT INTO EmployeeTerritories VALUES (8, '44122');
INSERT INTO EmployeeTerritories VALUES (8, '45839');
INSERT INTO EmployeeTerritories VALUES (8, '53404');
INSERT INTO EmployeeTerritories VALUES (9, '03049');
INSERT INTO EmployeeTerritories VALUES (9, '03801');
INSERT INTO EmployeeTerritories VALUES (9, '48075');
INSERT INTO EmployeeTerritories VALUES (9, '48084');
INSERT INTO EmployeeTerritories VALUES (9, '48304');
INSERT INTO EmployeeTerritories VALUES (9, '55113');
INSERT INTO EmployeeTerritories VALUES (9, '55439');
INSERT INTO Orders VALUES (10248, 'VINET', 5, '7/4/1996 12:00:00 AM', '8/1/1996 12:00:00 AM', '7/16/1996 12:00:00 AM', 3, 32.38, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', null, '51100', 'France');
INSERT INTO Orders VALUES (10249, 'TOMSP', 6, '7/5/1996 12:00:00 AM', '8/16/1996 12:00:00 AM', '7/10/1996 12:00:00 AM', 1, 11.61, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', null, '44087', 'Germany');
INSERT INTO Orders VALUES (10250, 'HANAR', 4, '7/8/1996 12:00:00 AM', '8/5/1996 12:00:00 AM', '7/12/1996 12:00:00 AM', 2, 65.83, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10251, 'VICTE', 3, '7/8/1996 12:00:00 AM', '8/5/1996 12:00:00 AM', '7/15/1996 12:00:00 AM', 1, 41.34, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10252, 'SUPRD', 4, '7/9/1996 12:00:00 AM', '8/6/1996 12:00:00 AM', '7/11/1996 12:00:00 AM', 2, 51.3, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10253, 'HANAR', 3, '7/10/1996 12:00:00 AM', '7/24/1996 12:00:00 AM', '7/16/1996 12:00:00 AM', 2, 58.17, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10254, 'CHOPS', 5, '7/11/1996 12:00:00 AM', '8/8/1996 12:00:00 AM', '7/23/1996 12:00:00 AM', 2, 22.98, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', null, '3012', 'Switzerland');
INSERT INTO Orders VALUES (10255, 'RICSU', 9, '7/12/1996 12:00:00 AM', '8/9/1996 12:00:00 AM', '7/15/1996 12:00:00 AM', 3, 148.33, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (10256, 'WELLI', 3, '7/15/1996 12:00:00 AM', '8/12/1996 12:00:00 AM', '7/17/1996 12:00:00 AM', 2, 13.97, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders VALUES (10257, 'HILAA', 4, '7/16/1996 12:00:00 AM', '8/13/1996 12:00:00 AM', '7/22/1996 12:00:00 AM', 3, 81.91, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10258, 'ERNSH', 1, '7/17/1996 12:00:00 AM', '8/14/1996 12:00:00 AM', '7/23/1996 12:00:00 AM', 1, 140.51, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10259, 'CENTC', 4, '7/18/1996 12:00:00 AM', '8/15/1996 12:00:00 AM', '7/25/1996 12:00:00 AM', 3, 3.25, 'Centro comercial Moctezuma', 'Sierras de Granada 9993', 'México D.F.', null, '05022', 'Mexico');
INSERT INTO Orders VALUES (10260, 'OTTIK', 4, '7/19/1996 12:00:00 AM', '8/16/1996 12:00:00 AM', '7/29/1996 12:00:00 AM', 1, 55.09, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (10261, 'QUEDE', 4, '7/19/1996 12:00:00 AM', '8/16/1996 12:00:00 AM', '7/30/1996 12:00:00 AM', 2, 3.05, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders VALUES (10262, 'RATTC', 8, '7/22/1996 12:00:00 AM', '8/19/1996 12:00:00 AM', '7/25/1996 12:00:00 AM', 3, 48.29, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10263, 'ERNSH', 9, '7/23/1996 12:00:00 AM', '8/20/1996 12:00:00 AM', '7/31/1996 12:00:00 AM', 3, 146.06, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10264, 'FOLKO', 6, '7/24/1996 12:00:00 AM', '8/21/1996 12:00:00 AM', '8/23/1996 12:00:00 AM', 3, 3.67, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10265, 'BLONP', 2, '7/25/1996 12:00:00 AM', '8/22/1996 12:00:00 AM', '8/12/1996 12:00:00 AM', 1, 55.28, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10266, 'WARTH', 3, '7/26/1996 12:00:00 AM', '9/6/1996 12:00:00 AM', '7/31/1996 12:00:00 AM', 3, 25.73, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10267, 'FRANK', 4, '7/29/1996 12:00:00 AM', '8/26/1996 12:00:00 AM', '8/6/1996 12:00:00 AM', 1, 208.58, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10268, 'GROSR', 8, '7/30/1996 12:00:00 AM', '8/27/1996 12:00:00 AM', '8/2/1996 12:00:00 AM', 3, 66.29, 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grande', 'Caracas', 'DF', '1081', 'Venezuela');
INSERT INTO Orders VALUES (10269, 'WHITC', 5, '7/31/1996 12:00:00 AM', '8/14/1996 12:00:00 AM', '8/9/1996 12:00:00 AM', 1, 4.56, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10270, 'WARTH', 1, '8/1/1996 12:00:00 AM', '8/29/1996 12:00:00 AM', '8/2/1996 12:00:00 AM', 1, 136.54, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10271, 'SPLIR', 6, '8/1/1996 12:00:00 AM', '8/29/1996 12:00:00 AM', '8/30/1996 12:00:00 AM', 2, 4.54, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders VALUES (10272, 'RATTC', 6, '8/2/1996 12:00:00 AM', '8/30/1996 12:00:00 AM', '8/6/1996 12:00:00 AM', 2, 98.03, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10273, 'QUICK', 3, '8/5/1996 12:00:00 AM', '9/2/1996 12:00:00 AM', '8/12/1996 12:00:00 AM', 3, 76.07, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10274, 'VINET', 6, '8/6/1996 12:00:00 AM', '9/3/1996 12:00:00 AM', '8/16/1996 12:00:00 AM', 1, 6.01, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', null, '51100', 'France');
INSERT INTO Orders VALUES (10275, 'MAGAA', 1, '8/7/1996 12:00:00 AM', '9/4/1996 12:00:00 AM', '8/9/1996 12:00:00 AM', 1, 26.93, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10276, 'TORTU', 8, '8/8/1996 12:00:00 AM', '8/22/1996 12:00:00 AM', '8/14/1996 12:00:00 AM', 3, 13.84, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10277, 'MORGK', 2, '8/9/1996 12:00:00 AM', '9/6/1996 12:00:00 AM', '8/13/1996 12:00:00 AM', 3, 125.77, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', null, '04179', 'Germany');
INSERT INTO Orders VALUES (10278, 'BERGS', 8, '8/12/1996 12:00:00 AM', '9/9/1996 12:00:00 AM', '8/16/1996 12:00:00 AM', 2, 92.69, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10279, 'LEHMS', 8, '8/13/1996 12:00:00 AM', '9/10/1996 12:00:00 AM', '8/16/1996 12:00:00 AM', 2, 25.83, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10280, 'BERGS', 2, '8/14/1996 12:00:00 AM', '9/11/1996 12:00:00 AM', '9/12/1996 12:00:00 AM', 1, 8.98, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10281, 'ROMEY', 4, '8/14/1996 12:00:00 AM', '8/28/1996 12:00:00 AM', '8/21/1996 12:00:00 AM', 1, 2.94, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', null, '28001', 'Spain');
INSERT INTO Orders VALUES (10282, 'ROMEY', 4, '8/15/1996 12:00:00 AM', '9/12/1996 12:00:00 AM', '8/21/1996 12:00:00 AM', 1, 12.69, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', null, '28001', 'Spain');
INSERT INTO Orders VALUES (10283, 'LILAS', 3, '8/16/1996 12:00:00 AM', '9/13/1996 12:00:00 AM', '8/23/1996 12:00:00 AM', 3, 84.81, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10284, 'LEHMS', 4, '8/19/1996 12:00:00 AM', '9/16/1996 12:00:00 AM', '8/27/1996 12:00:00 AM', 1, 76.56, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10285, 'QUICK', 1, '8/20/1996 12:00:00 AM', '9/17/1996 12:00:00 AM', '8/26/1996 12:00:00 AM', 2, 76.83, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10286, 'QUICK', 8, '8/21/1996 12:00:00 AM', '9/18/1996 12:00:00 AM', '8/30/1996 12:00:00 AM', 3, 229.24, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10287, 'RICAR', 8, '8/22/1996 12:00:00 AM', '9/19/1996 12:00:00 AM', '8/28/1996 12:00:00 AM', 3, 12.76, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10288, 'REGGC', 4, '8/23/1996 12:00:00 AM', '9/20/1996 12:00:00 AM', '9/3/1996 12:00:00 AM', 1, 7.45, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10289, 'BSBEV', 7, '8/26/1996 12:00:00 AM', '9/23/1996 12:00:00 AM', '8/28/1996 12:00:00 AM', 3, 22.77, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (10290, 'COMMI', 8, '8/27/1996 12:00:00 AM', '9/24/1996 12:00:00 AM', '9/3/1996 12:00:00 AM', 1, 79.7, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders VALUES (10291, 'QUEDE', 6, '8/27/1996 12:00:00 AM', '9/24/1996 12:00:00 AM', '9/4/1996 12:00:00 AM', 2, 6.4, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders VALUES (10292, 'TRADH', 1, '8/28/1996 12:00:00 AM', '9/25/1996 12:00:00 AM', '9/2/1996 12:00:00 AM', 2, 1.35, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders VALUES (10293, 'TORTU', 1, '8/29/1996 12:00:00 AM', '9/26/1996 12:00:00 AM', '9/11/1996 12:00:00 AM', 3, 21.18, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10294, 'RATTC', 4, '8/30/1996 12:00:00 AM', '9/27/1996 12:00:00 AM', '9/5/1996 12:00:00 AM', 2, 147.26, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10295, 'VINET', 2, '9/2/1996 12:00:00 AM', '9/30/1996 12:00:00 AM', '9/10/1996 12:00:00 AM', 2, 1.15, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', null, '51100', 'France');
INSERT INTO Orders VALUES (10296, 'LILAS', 6, '9/3/1996 12:00:00 AM', '10/1/1996 12:00:00 AM', '9/11/1996 12:00:00 AM', 1, 0.12, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10297, 'BLONP', 5, '9/4/1996 12:00:00 AM', '10/16/1996 12:00:00 AM', '9/10/1996 12:00:00 AM', 2, 5.74, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10298, 'HUNGO', 6, '9/5/1996 12:00:00 AM', '10/3/1996 12:00:00 AM', '9/11/1996 12:00:00 AM', 2, 168.22, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10299, 'RICAR', 4, '9/6/1996 12:00:00 AM', '10/4/1996 12:00:00 AM', '9/13/1996 12:00:00 AM', 2, 29.76, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10300, 'MAGAA', 2, '9/9/1996 12:00:00 AM', '10/7/1996 12:00:00 AM', '9/18/1996 12:00:00 AM', 2, 17.68, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10301, 'WANDK', 8, '9/9/1996 12:00:00 AM', '10/7/1996 12:00:00 AM', '9/17/1996 12:00:00 AM', 2, 45.08, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (10302, 'SUPRD', 4, '9/10/1996 12:00:00 AM', '10/8/1996 12:00:00 AM', '10/9/1996 12:00:00 AM', 2, 6.27, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10303, 'GODOS', 7, '9/11/1996 12:00:00 AM', '10/9/1996 12:00:00 AM', '9/18/1996 12:00:00 AM', 2, 107.83, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (10304, 'TORTU', 1, '9/12/1996 12:00:00 AM', '10/10/1996 12:00:00 AM', '9/17/1996 12:00:00 AM', 2, 63.79, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10305, 'OLDWO', 8, '9/13/1996 12:00:00 AM', '10/11/1996 12:00:00 AM', '10/9/1996 12:00:00 AM', 3, 257.62, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (10306, 'ROMEY', 1, '9/16/1996 12:00:00 AM', '10/14/1996 12:00:00 AM', '9/23/1996 12:00:00 AM', 3, 7.56, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', null, '28001', 'Spain');
INSERT INTO Orders VALUES (10307, 'LONEP', 2, '9/17/1996 12:00:00 AM', '10/15/1996 12:00:00 AM', '9/25/1996 12:00:00 AM', 2, 0.56, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders VALUES (10308, 'ANATR', 7, '9/18/1996 12:00:00 AM', '10/16/1996 12:00:00 AM', '9/24/1996 12:00:00 AM', 3, 1.61, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', null, '05021', 'Mexico');
INSERT INTO Orders VALUES (10309, 'HUNGO', 3, '9/19/1996 12:00:00 AM', '10/17/1996 12:00:00 AM', '10/23/1996 12:00:00 AM', 1, 47.3, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10310, 'THEBI', 8, '9/20/1996 12:00:00 AM', '10/18/1996 12:00:00 AM', '9/27/1996 12:00:00 AM', 2, 17.52, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA');
INSERT INTO Orders VALUES (10311, 'DUMON', 1, '9/20/1996 12:00:00 AM', '10/4/1996 12:00:00 AM', '9/26/1996 12:00:00 AM', 3, 24.69, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', null, '44000', 'France');
INSERT INTO Orders VALUES (10312, 'WANDK', 2, '9/23/1996 12:00:00 AM', '10/21/1996 12:00:00 AM', '10/3/1996 12:00:00 AM', 2, 40.26, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (10313, 'QUICK', 2, '9/24/1996 12:00:00 AM', '10/22/1996 12:00:00 AM', '10/4/1996 12:00:00 AM', 2, 1.96, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10314, 'RATTC', 1, '9/25/1996 12:00:00 AM', '10/23/1996 12:00:00 AM', '10/4/1996 12:00:00 AM', 2, 74.16, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10315, 'ISLAT', 4, '9/26/1996 12:00:00 AM', '10/24/1996 12:00:00 AM', '10/3/1996 12:00:00 AM', 2, 41.76, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10316, 'RATTC', 1, '9/27/1996 12:00:00 AM', '10/25/1996 12:00:00 AM', '10/8/1996 12:00:00 AM', 3, 150.15, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10317, 'LONEP', 6, '9/30/1996 12:00:00 AM', '10/28/1996 12:00:00 AM', '10/10/1996 12:00:00 AM', 1, 12.69, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders VALUES (10318, 'ISLAT', 8, '10/1/1996 12:00:00 AM', '10/29/1996 12:00:00 AM', '10/4/1996 12:00:00 AM', 2, 4.73, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10319, 'TORTU', 7, '10/2/1996 12:00:00 AM', '10/30/1996 12:00:00 AM', '10/11/1996 12:00:00 AM', 3, 64.5, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10320, 'WARTH', 5, '10/3/1996 12:00:00 AM', '10/17/1996 12:00:00 AM', '10/18/1996 12:00:00 AM', 3, 34.57, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10321, 'ISLAT', 3, '10/3/1996 12:00:00 AM', '10/31/1996 12:00:00 AM', '10/11/1996 12:00:00 AM', 2, 3.43, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10322, 'PERIC', 7, '10/4/1996 12:00:00 AM', '11/1/1996 12:00:00 AM', '10/23/1996 12:00:00 AM', 3, 0.4, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10323, 'KOENE', 4, '10/7/1996 12:00:00 AM', '11/4/1996 12:00:00 AM', '10/14/1996 12:00:00 AM', 1, 4.88, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10324, 'SAVEA', 9, '10/8/1996 12:00:00 AM', '11/5/1996 12:00:00 AM', '10/10/1996 12:00:00 AM', 1, 214.27, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10325, 'KOENE', 1, '10/9/1996 12:00:00 AM', '10/23/1996 12:00:00 AM', '10/14/1996 12:00:00 AM', 3, 64.86, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10326, 'BOLID', 4, '10/10/1996 12:00:00 AM', '11/7/1996 12:00:00 AM', '10/14/1996 12:00:00 AM', 2, 77.92, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', null, '28023', 'Spain');
INSERT INTO Orders VALUES (10327, 'FOLKO', 2, '10/11/1996 12:00:00 AM', '11/8/1996 12:00:00 AM', '10/14/1996 12:00:00 AM', 1, 63.36, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10328, 'FURIB', 4, '10/14/1996 12:00:00 AM', '11/11/1996 12:00:00 AM', '10/17/1996 12:00:00 AM', 3, 87.03, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', null, '1675', 'Portugal');
INSERT INTO Orders VALUES (10329, 'SPLIR', 4, '10/15/1996 12:00:00 AM', '11/26/1996 12:00:00 AM', '10/23/1996 12:00:00 AM', 2, 191.67, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders VALUES (10330, 'LILAS', 3, '10/16/1996 12:00:00 AM', '11/13/1996 12:00:00 AM', '10/28/1996 12:00:00 AM', 1, 12.75, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10331, 'BONAP', 9, '10/16/1996 12:00:00 AM', '11/27/1996 12:00:00 AM', '10/21/1996 12:00:00 AM', 1, 10.19, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10332, 'MEREP', 3, '10/17/1996 12:00:00 AM', '11/28/1996 12:00:00 AM', '10/21/1996 12:00:00 AM', 2, 52.84, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10333, 'WARTH', 5, '10/18/1996 12:00:00 AM', '11/15/1996 12:00:00 AM', '10/25/1996 12:00:00 AM', 3, 0.59, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10334, 'VICTE', 8, '10/21/1996 12:00:00 AM', '11/18/1996 12:00:00 AM', '10/28/1996 12:00:00 AM', 2, 8.56, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10335, 'HUNGO', 7, '10/22/1996 12:00:00 AM', '11/19/1996 12:00:00 AM', '10/24/1996 12:00:00 AM', 2, 42.11, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10336, 'PRINI', 7, '10/23/1996 12:00:00 AM', '11/20/1996 12:00:00 AM', '10/25/1996 12:00:00 AM', 2, 15.51, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', null, '1756', 'Portugal');
INSERT INTO Orders VALUES (10337, 'FRANK', 4, '10/24/1996 12:00:00 AM', '11/21/1996 12:00:00 AM', '10/29/1996 12:00:00 AM', 3, 108.26, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10338, 'OLDWO', 4, '10/25/1996 12:00:00 AM', '11/22/1996 12:00:00 AM', '10/29/1996 12:00:00 AM', 3, 84.21, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (10339, 'MEREP', 2, '10/28/1996 12:00:00 AM', '11/25/1996 12:00:00 AM', '11/4/1996 12:00:00 AM', 2, 15.66, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10340, 'BONAP', 1, '10/29/1996 12:00:00 AM', '11/26/1996 12:00:00 AM', '11/8/1996 12:00:00 AM', 3, 166.31, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10341, 'SIMOB', 7, '10/29/1996 12:00:00 AM', '11/26/1996 12:00:00 AM', '11/5/1996 12:00:00 AM', 3, 26.78, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', null, '1734', 'Denmark');
INSERT INTO Orders VALUES (10342, 'FRANK', 4, '10/30/1996 12:00:00 AM', '11/13/1996 12:00:00 AM', '11/4/1996 12:00:00 AM', 2, 54.83, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10343, 'LEHMS', 4, '10/31/1996 12:00:00 AM', '11/28/1996 12:00:00 AM', '11/6/1996 12:00:00 AM', 1, 110.37, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10344, 'WHITC', 4, '11/1/1996 12:00:00 AM', '11/29/1996 12:00:00 AM', '11/5/1996 12:00:00 AM', 2, 23.29, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10345, 'QUICK', 2, '11/4/1996 12:00:00 AM', '12/2/1996 12:00:00 AM', '11/11/1996 12:00:00 AM', 2, 249.06, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10346, 'RATTC', 3, '11/5/1996 12:00:00 AM', '12/17/1996 12:00:00 AM', '11/8/1996 12:00:00 AM', 3, 142.08, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10347, 'FAMIA', 4, '11/6/1996 12:00:00 AM', '12/4/1996 12:00:00 AM', '11/8/1996 12:00:00 AM', 3, 3.1, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders VALUES (10348, 'WANDK', 4, '11/7/1996 12:00:00 AM', '12/5/1996 12:00:00 AM', '11/15/1996 12:00:00 AM', 2, 0.78, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (10349, 'SPLIR', 7, '11/8/1996 12:00:00 AM', '12/6/1996 12:00:00 AM', '11/15/1996 12:00:00 AM', 1, 8.63, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders VALUES (10350, 'LAMAI', 6, '11/11/1996 12:00:00 AM', '12/9/1996 12:00:00 AM', '12/3/1996 12:00:00 AM', 2, 64.19, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10351, 'ERNSH', 1, '11/11/1996 12:00:00 AM', '12/9/1996 12:00:00 AM', '11/20/1996 12:00:00 AM', 1, 162.33, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10352, 'FURIB', 3, '11/12/1996 12:00:00 AM', '11/26/1996 12:00:00 AM', '11/18/1996 12:00:00 AM', 3, 1.3, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', null, '1675', 'Portugal');
INSERT INTO Orders VALUES (10353, 'PICCO', 7, '11/13/1996 12:00:00 AM', '12/11/1996 12:00:00 AM', '11/25/1996 12:00:00 AM', 3, 360.63, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (10354, 'PERIC', 8, '11/14/1996 12:00:00 AM', '12/12/1996 12:00:00 AM', '11/20/1996 12:00:00 AM', 3, 53.8, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10355, 'AROUT', 6, '11/15/1996 12:00:00 AM', '12/13/1996 12:00:00 AM', '11/20/1996 12:00:00 AM', 1, 41.95, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10356, 'WANDK', 6, '11/18/1996 12:00:00 AM', '12/16/1996 12:00:00 AM', '11/27/1996 12:00:00 AM', 2, 36.71, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (10357, 'LILAS', 1, '11/19/1996 12:00:00 AM', '12/17/1996 12:00:00 AM', '12/2/1996 12:00:00 AM', 3, 34.88, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10358, 'LAMAI', 5, '11/20/1996 12:00:00 AM', '12/18/1996 12:00:00 AM', '11/27/1996 12:00:00 AM', 1, 19.64, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10359, 'SEVES', 5, '11/21/1996 12:00:00 AM', '12/19/1996 12:00:00 AM', '11/26/1996 12:00:00 AM', 3, 288.43, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK');
INSERT INTO Orders VALUES (10360, 'BLONP', 4, '11/22/1996 12:00:00 AM', '12/20/1996 12:00:00 AM', '12/2/1996 12:00:00 AM', 3, 131.7, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10361, 'QUICK', 1, '11/22/1996 12:00:00 AM', '12/20/1996 12:00:00 AM', '12/3/1996 12:00:00 AM', 2, 183.17, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10362, 'BONAP', 3, '11/25/1996 12:00:00 AM', '12/23/1996 12:00:00 AM', '11/28/1996 12:00:00 AM', 1, 96.04, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10363, 'DRACD', 4, '11/26/1996 12:00:00 AM', '12/24/1996 12:00:00 AM', '12/4/1996 12:00:00 AM', 3, 30.54, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', null, '52066', 'Germany');
INSERT INTO Orders VALUES (10364, 'EASTC', 1, '11/26/1996 12:00:00 AM', '1/7/1997 12:00:00 AM', '12/4/1996 12:00:00 AM', 1, 71.97, 'Eastern Connection', '35 King George', 'London', null, 'WX3 6FW', 'UK');
INSERT INTO Orders VALUES (10365, 'ANTON', 3, '11/27/1996 12:00:00 AM', '12/25/1996 12:00:00 AM', '12/2/1996 12:00:00 AM', 2, 22.0, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', null, '05023', 'Mexico');
INSERT INTO Orders VALUES (10366, 'GALED', 8, '11/28/1996 12:00:00 AM', '1/9/1997 12:00:00 AM', '12/30/1996 12:00:00 AM', 2, 10.14, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', null, '8022', 'Spain');
INSERT INTO Orders VALUES (10367, 'VAFFE', 7, '11/28/1996 12:00:00 AM', '12/26/1996 12:00:00 AM', '12/2/1996 12:00:00 AM', 3, 13.55, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10368, 'ERNSH', 2, '11/29/1996 12:00:00 AM', '12/27/1996 12:00:00 AM', '12/2/1996 12:00:00 AM', 2, 101.95, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10369, 'SPLIR', 8, '12/2/1996 12:00:00 AM', '12/30/1996 12:00:00 AM', '12/9/1996 12:00:00 AM', 2, 195.68, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders VALUES (10370, 'CHOPS', 6, '12/3/1996 12:00:00 AM', '12/31/1996 12:00:00 AM', '12/27/1996 12:00:00 AM', 2, 1.17, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', null, '3012', 'Switzerland');
INSERT INTO Orders VALUES (10371, 'LAMAI', 1, '12/3/1996 12:00:00 AM', '12/31/1996 12:00:00 AM', '12/24/1996 12:00:00 AM', 1, 0.45, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10372, 'QUEEN', 5, '12/4/1996 12:00:00 AM', '1/1/1997 12:00:00 AM', '12/9/1996 12:00:00 AM', 2, 890.78, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10373, 'HUNGO', 4, '12/5/1996 12:00:00 AM', '1/2/1997 12:00:00 AM', '12/11/1996 12:00:00 AM', 3, 124.12, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10374, 'WOLZA', 1, '12/5/1996 12:00:00 AM', '1/2/1997 12:00:00 AM', '12/9/1996 12:00:00 AM', 3, 3.94, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', null, '01-012', 'Poland');
INSERT INTO Orders VALUES (10375, 'HUNGC', 3, '12/6/1996 12:00:00 AM', '1/3/1997 12:00:00 AM', '12/9/1996 12:00:00 AM', 2, 20.12, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders VALUES (10376, 'MEREP', 1, '12/9/1996 12:00:00 AM', '1/6/1997 12:00:00 AM', '12/13/1996 12:00:00 AM', 2, 20.39, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10377, 'SEVES', 1, '12/9/1996 12:00:00 AM', '1/6/1997 12:00:00 AM', '12/13/1996 12:00:00 AM', 3, 22.21, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK');
INSERT INTO Orders VALUES (10378, 'FOLKO', 5, '12/10/1996 12:00:00 AM', '1/7/1997 12:00:00 AM', '12/19/1996 12:00:00 AM', 3, 5.44, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10379, 'QUEDE', 2, '12/11/1996 12:00:00 AM', '1/8/1997 12:00:00 AM', '12/13/1996 12:00:00 AM', 1, 45.03, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders VALUES (10380, 'HUNGO', 8, '12/12/1996 12:00:00 AM', '1/9/1997 12:00:00 AM', '1/16/1997 12:00:00 AM', 3, 35.03, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10381, 'LILAS', 3, '12/12/1996 12:00:00 AM', '1/9/1997 12:00:00 AM', '12/13/1996 12:00:00 AM', 3, 7.99, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10382, 'ERNSH', 4, '12/13/1996 12:00:00 AM', '1/10/1997 12:00:00 AM', '12/16/1996 12:00:00 AM', 1, 94.77, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10383, 'AROUT', 8, '12/16/1996 12:00:00 AM', '1/13/1997 12:00:00 AM', '12/18/1996 12:00:00 AM', 3, 34.24, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10384, 'BERGS', 3, '12/16/1996 12:00:00 AM', '1/13/1997 12:00:00 AM', '12/20/1996 12:00:00 AM', 3, 168.64, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10385, 'SPLIR', 1, '12/17/1996 12:00:00 AM', '1/14/1997 12:00:00 AM', '12/23/1996 12:00:00 AM', 2, 30.96, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders VALUES (10386, 'FAMIA', 9, '12/18/1996 12:00:00 AM', '1/1/1997 12:00:00 AM', '12/25/1996 12:00:00 AM', 3, 13.99, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders VALUES (10387, 'SANTG', 1, '12/18/1996 12:00:00 AM', '1/15/1997 12:00:00 AM', '12/20/1996 12:00:00 AM', 2, 93.63, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', null, '4110', 'Norway');
INSERT INTO Orders VALUES (10388, 'SEVES', 2, '12/19/1996 12:00:00 AM', '1/16/1997 12:00:00 AM', '12/20/1996 12:00:00 AM', 1, 34.86, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK');
INSERT INTO Orders VALUES (10389, 'BOTTM', 4, '12/20/1996 12:00:00 AM', '1/17/1997 12:00:00 AM', '12/24/1996 12:00:00 AM', 2, 47.42, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10390, 'ERNSH', 6, '12/23/1996 12:00:00 AM', '1/20/1997 12:00:00 AM', '12/26/1996 12:00:00 AM', 1, 126.38, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10391, 'DRACD', 3, '12/23/1996 12:00:00 AM', '1/20/1997 12:00:00 AM', '12/31/1996 12:00:00 AM', 3, 5.45, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', null, '52066', 'Germany');
INSERT INTO Orders VALUES (10392, 'PICCO', 2, '12/24/1996 12:00:00 AM', '1/21/1997 12:00:00 AM', '1/1/1997 12:00:00 AM', 3, 122.46, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (10393, 'SAVEA', 1, '12/25/1996 12:00:00 AM', '1/22/1997 12:00:00 AM', '1/3/1997 12:00:00 AM', 3, 126.56, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10394, 'HUNGC', 1, '12/25/1996 12:00:00 AM', '1/22/1997 12:00:00 AM', '1/3/1997 12:00:00 AM', 3, 30.34, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders VALUES (10395, 'HILAA', 6, '12/26/1996 12:00:00 AM', '1/23/1997 12:00:00 AM', '1/3/1997 12:00:00 AM', 1, 184.41, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10396, 'FRANK', 1, '12/27/1996 12:00:00 AM', '1/10/1997 12:00:00 AM', '1/6/1997 12:00:00 AM', 3, 135.35, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10397, 'PRINI', 5, '12/27/1996 12:00:00 AM', '1/24/1997 12:00:00 AM', '1/2/1997 12:00:00 AM', 1, 60.26, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', null, '1756', 'Portugal');
INSERT INTO Orders VALUES (10398, 'SAVEA', 2, '12/30/1996 12:00:00 AM', '1/27/1997 12:00:00 AM', '1/9/1997 12:00:00 AM', 3, 89.16, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10399, 'VAFFE', 8, '12/31/1996 12:00:00 AM', '1/14/1997 12:00:00 AM', '1/8/1997 12:00:00 AM', 3, 27.36, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10400, 'EASTC', 1, '1/1/1997 12:00:00 AM', '1/29/1997 12:00:00 AM', '1/16/1997 12:00:00 AM', 3, 83.93, 'Eastern Connection', '35 King George', 'London', null, 'WX3 6FW', 'UK');
INSERT INTO Orders VALUES (10401, 'RATTC', 1, '1/1/1997 12:00:00 AM', '1/29/1997 12:00:00 AM', '1/10/1997 12:00:00 AM', 1, 12.51, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10402, 'ERNSH', 8, '1/2/1997 12:00:00 AM', '2/13/1997 12:00:00 AM', '1/10/1997 12:00:00 AM', 2, 67.88, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10403, 'ERNSH', 4, '1/3/1997 12:00:00 AM', '1/31/1997 12:00:00 AM', '1/9/1997 12:00:00 AM', 3, 73.79, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10404, 'MAGAA', 2, '1/3/1997 12:00:00 AM', '1/31/1997 12:00:00 AM', '1/8/1997 12:00:00 AM', 1, 155.97, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10405, 'LINOD', 1, '1/6/1997 12:00:00 AM', '2/3/1997 12:00:00 AM', '1/22/1997 12:00:00 AM', 1, 34.82, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10406, 'QUEEN', 7, '1/7/1997 12:00:00 AM', '2/18/1997 12:00:00 AM', '1/13/1997 12:00:00 AM', 1, 108.04, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10407, 'OTTIK', 2, '1/7/1997 12:00:00 AM', '2/4/1997 12:00:00 AM', '1/30/1997 12:00:00 AM', 2, 91.48, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (10408, 'FOLIG', 8, '1/8/1997 12:00:00 AM', '2/5/1997 12:00:00 AM', '1/14/1997 12:00:00 AM', 1, 11.26, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', null, '59000', 'France');
INSERT INTO Orders VALUES (10409, 'OCEAN', 3, '1/9/1997 12:00:00 AM', '2/6/1997 12:00:00 AM', '1/14/1997 12:00:00 AM', 1, 29.83, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10410, 'BOTTM', 3, '1/10/1997 12:00:00 AM', '2/7/1997 12:00:00 AM', '1/15/1997 12:00:00 AM', 3, 2.4, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10411, 'BOTTM', 9, '1/10/1997 12:00:00 AM', '2/7/1997 12:00:00 AM', '1/21/1997 12:00:00 AM', 3, 23.65, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10412, 'WARTH', 8, '1/13/1997 12:00:00 AM', '2/10/1997 12:00:00 AM', '1/15/1997 12:00:00 AM', 2, 3.77, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10413, 'LAMAI', 3, '1/14/1997 12:00:00 AM', '2/11/1997 12:00:00 AM', '1/16/1997 12:00:00 AM', 2, 95.66, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10414, 'FAMIA', 2, '1/14/1997 12:00:00 AM', '2/11/1997 12:00:00 AM', '1/17/1997 12:00:00 AM', 3, 21.48, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders VALUES (10415, 'HUNGC', 3, '1/15/1997 12:00:00 AM', '2/12/1997 12:00:00 AM', '1/24/1997 12:00:00 AM', 1, 0.2, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders VALUES (10416, 'WARTH', 8, '1/16/1997 12:00:00 AM', '2/13/1997 12:00:00 AM', '1/27/1997 12:00:00 AM', 3, 22.72, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10417, 'SIMOB', 4, '1/16/1997 12:00:00 AM', '2/13/1997 12:00:00 AM', '1/28/1997 12:00:00 AM', 3, 70.29, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', null, '1734', 'Denmark');
INSERT INTO Orders VALUES (10418, 'QUICK', 4, '1/17/1997 12:00:00 AM', '2/14/1997 12:00:00 AM', '1/24/1997 12:00:00 AM', 1, 17.55, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10419, 'RICSU', 4, '1/20/1997 12:00:00 AM', '2/17/1997 12:00:00 AM', '1/30/1997 12:00:00 AM', 2, 137.35, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (10420, 'WELLI', 3, '1/21/1997 12:00:00 AM', '2/18/1997 12:00:00 AM', '1/27/1997 12:00:00 AM', 1, 44.12, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders VALUES (10421, 'QUEDE', 8, '1/21/1997 12:00:00 AM', '3/4/1997 12:00:00 AM', '1/27/1997 12:00:00 AM', 1, 99.23, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders VALUES (10422, 'FRANS', 2, '1/22/1997 12:00:00 AM', '2/19/1997 12:00:00 AM', '1/31/1997 12:00:00 AM', 1, 3.02, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', null, '10100', 'Italy');
INSERT INTO Orders VALUES (10423, 'GOURL', 6, '1/23/1997 12:00:00 AM', '2/6/1997 12:00:00 AM', '2/24/1997 12:00:00 AM', 3, 24.5, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders VALUES (10424, 'MEREP', 7, '1/23/1997 12:00:00 AM', '2/20/1997 12:00:00 AM', '1/27/1997 12:00:00 AM', 2, 370.61, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10425, 'LAMAI', 6, '1/24/1997 12:00:00 AM', '2/21/1997 12:00:00 AM', '2/14/1997 12:00:00 AM', 2, 7.93, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10426, 'GALED', 4, '1/27/1997 12:00:00 AM', '2/24/1997 12:00:00 AM', '2/6/1997 12:00:00 AM', 1, 18.69, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', null, '8022', 'Spain');
INSERT INTO Orders VALUES (10427, 'PICCO', 4, '1/27/1997 12:00:00 AM', '2/24/1997 12:00:00 AM', '3/3/1997 12:00:00 AM', 2, 31.29, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (10428, 'REGGC', 7, '1/28/1997 12:00:00 AM', '2/25/1997 12:00:00 AM', '2/4/1997 12:00:00 AM', 1, 11.09, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10429, 'HUNGO', 3, '1/29/1997 12:00:00 AM', '3/12/1997 12:00:00 AM', '2/7/1997 12:00:00 AM', 2, 56.63, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10430, 'ERNSH', 4, '1/30/1997 12:00:00 AM', '2/13/1997 12:00:00 AM', '2/3/1997 12:00:00 AM', 1, 458.78, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10431, 'BOTTM', 4, '1/30/1997 12:00:00 AM', '2/13/1997 12:00:00 AM', '2/7/1997 12:00:00 AM', 2, 44.17, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10432, 'SPLIR', 3, '1/31/1997 12:00:00 AM', '2/14/1997 12:00:00 AM', '2/7/1997 12:00:00 AM', 2, 4.34, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders VALUES (10433, 'PRINI', 3, '2/3/1997 12:00:00 AM', '3/3/1997 12:00:00 AM', '3/4/1997 12:00:00 AM', 3, 73.83, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', null, '1756', 'Portugal');
INSERT INTO Orders VALUES (10434, 'FOLKO', 3, '2/3/1997 12:00:00 AM', '3/3/1997 12:00:00 AM', '2/13/1997 12:00:00 AM', 2, 17.92, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10435, 'CONSH', 8, '2/4/1997 12:00:00 AM', '3/18/1997 12:00:00 AM', '2/7/1997 12:00:00 AM', 2, 9.21, 'Consolidated Holdings', 'Berkeley Gardens 12  Brewery', 'London', null, 'WX1 6LT', 'UK');
INSERT INTO Orders VALUES (10436, 'BLONP', 3, '2/5/1997 12:00:00 AM', '3/5/1997 12:00:00 AM', '2/11/1997 12:00:00 AM', 2, 156.66, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10437, 'WARTH', 8, '2/5/1997 12:00:00 AM', '3/5/1997 12:00:00 AM', '2/12/1997 12:00:00 AM', 1, 19.97, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10438, 'TOMSP', 3, '2/6/1997 12:00:00 AM', '3/6/1997 12:00:00 AM', '2/14/1997 12:00:00 AM', 2, 8.24, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', null, '44087', 'Germany');
INSERT INTO Orders VALUES (10439, 'MEREP', 6, '2/7/1997 12:00:00 AM', '3/7/1997 12:00:00 AM', '2/10/1997 12:00:00 AM', 3, 4.07, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10440, 'SAVEA', 4, '2/10/1997 12:00:00 AM', '3/10/1997 12:00:00 AM', '2/28/1997 12:00:00 AM', 2, 86.53, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10441, 'OLDWO', 3, '2/10/1997 12:00:00 AM', '3/24/1997 12:00:00 AM', '3/14/1997 12:00:00 AM', 2, 73.02, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (10442, 'ERNSH', 3, '2/11/1997 12:00:00 AM', '3/11/1997 12:00:00 AM', '2/18/1997 12:00:00 AM', 2, 47.94, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10443, 'REGGC', 8, '2/12/1997 12:00:00 AM', '3/12/1997 12:00:00 AM', '2/14/1997 12:00:00 AM', 1, 13.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10444, 'BERGS', 3, '2/12/1997 12:00:00 AM', '3/12/1997 12:00:00 AM', '2/21/1997 12:00:00 AM', 3, 3.5, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10445, 'BERGS', 3, '2/13/1997 12:00:00 AM', '3/13/1997 12:00:00 AM', '2/20/1997 12:00:00 AM', 1, 9.3, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10446, 'TOMSP', 6, '2/14/1997 12:00:00 AM', '3/14/1997 12:00:00 AM', '2/19/1997 12:00:00 AM', 1, 14.68, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', null, '44087', 'Germany');
INSERT INTO Orders VALUES (10447, 'RICAR', 4, '2/14/1997 12:00:00 AM', '3/14/1997 12:00:00 AM', '3/7/1997 12:00:00 AM', 2, 68.66, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10448, 'RANCH', 4, '2/17/1997 12:00:00 AM', '3/17/1997 12:00:00 AM', '2/24/1997 12:00:00 AM', 2, 38.82, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10449, 'BLONP', 3, '2/18/1997 12:00:00 AM', '3/18/1997 12:00:00 AM', '2/27/1997 12:00:00 AM', 2, 53.3, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10450, 'VICTE', 8, '2/19/1997 12:00:00 AM', '3/19/1997 12:00:00 AM', '3/11/1997 12:00:00 AM', 2, 7.23, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10451, 'QUICK', 4, '2/19/1997 12:00:00 AM', '3/5/1997 12:00:00 AM', '3/12/1997 12:00:00 AM', 3, 189.09, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10452, 'SAVEA', 8, '2/20/1997 12:00:00 AM', '3/20/1997 12:00:00 AM', '2/26/1997 12:00:00 AM', 1, 140.26, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10453, 'AROUT', 1, '2/21/1997 12:00:00 AM', '3/21/1997 12:00:00 AM', '2/26/1997 12:00:00 AM', 2, 25.36, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10454, 'LAMAI', 4, '2/21/1997 12:00:00 AM', '3/21/1997 12:00:00 AM', '2/25/1997 12:00:00 AM', 3, 2.74, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10455, 'WARTH', 8, '2/24/1997 12:00:00 AM', '4/7/1997 12:00:00 AM', '3/3/1997 12:00:00 AM', 2, 180.45, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10456, 'KOENE', 8, '2/25/1997 12:00:00 AM', '4/8/1997 12:00:00 AM', '2/28/1997 12:00:00 AM', 2, 8.12, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10457, 'KOENE', 2, '2/25/1997 12:00:00 AM', '3/25/1997 12:00:00 AM', '3/3/1997 12:00:00 AM', 1, 11.57, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10458, 'SUPRD', 7, '2/26/1997 12:00:00 AM', '3/26/1997 12:00:00 AM', '3/4/1997 12:00:00 AM', 3, 147.06, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10459, 'VICTE', 4, '2/27/1997 12:00:00 AM', '3/27/1997 12:00:00 AM', '2/28/1997 12:00:00 AM', 2, 25.09, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10460, 'FOLKO', 8, '2/28/1997 12:00:00 AM', '3/28/1997 12:00:00 AM', '3/3/1997 12:00:00 AM', 1, 16.27, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10461, 'LILAS', 1, '2/28/1997 12:00:00 AM', '3/28/1997 12:00:00 AM', '3/5/1997 12:00:00 AM', 3, 148.61, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10462, 'CONSH', 2, '3/3/1997 12:00:00 AM', '3/31/1997 12:00:00 AM', '3/18/1997 12:00:00 AM', 1, 6.17, 'Consolidated Holdings', 'Berkeley Gardens 12  Brewery', 'London', null, 'WX1 6LT', 'UK');
INSERT INTO Orders VALUES (10463, 'SUPRD', 5, '3/4/1997 12:00:00 AM', '4/1/1997 12:00:00 AM', '3/6/1997 12:00:00 AM', 3, 14.78, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10464, 'FURIB', 4, '3/4/1997 12:00:00 AM', '4/1/1997 12:00:00 AM', '3/14/1997 12:00:00 AM', 2, 89.0, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', null, '1675', 'Portugal');
INSERT INTO Orders VALUES (10465, 'VAFFE', 1, '3/5/1997 12:00:00 AM', '4/2/1997 12:00:00 AM', '3/14/1997 12:00:00 AM', 3, 145.04, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10466, 'COMMI', 4, '3/6/1997 12:00:00 AM', '4/3/1997 12:00:00 AM', '3/13/1997 12:00:00 AM', 1, 11.93, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders VALUES (10467, 'MAGAA', 8, '3/6/1997 12:00:00 AM', '4/3/1997 12:00:00 AM', '3/11/1997 12:00:00 AM', 2, 4.93, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10468, 'KOENE', 3, '3/7/1997 12:00:00 AM', '4/4/1997 12:00:00 AM', '3/12/1997 12:00:00 AM', 3, 44.12, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10469, 'WHITC', 1, '3/10/1997 12:00:00 AM', '4/7/1997 12:00:00 AM', '3/14/1997 12:00:00 AM', 1, 60.18, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10470, 'BONAP', 4, '3/11/1997 12:00:00 AM', '4/8/1997 12:00:00 AM', '3/14/1997 12:00:00 AM', 2, 64.56, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10471, 'BSBEV', 2, '3/11/1997 12:00:00 AM', '4/8/1997 12:00:00 AM', '3/18/1997 12:00:00 AM', 3, 45.59, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (10472, 'SEVES', 8, '3/12/1997 12:00:00 AM', '4/9/1997 12:00:00 AM', '3/19/1997 12:00:00 AM', 1, 4.2, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK');
INSERT INTO Orders VALUES (10473, 'ISLAT', 1, '3/13/1997 12:00:00 AM', '3/27/1997 12:00:00 AM', '3/21/1997 12:00:00 AM', 3, 16.37, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10474, 'PERIC', 5, '3/13/1997 12:00:00 AM', '4/10/1997 12:00:00 AM', '3/21/1997 12:00:00 AM', 2, 83.49, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10475, 'SUPRD', 9, '3/14/1997 12:00:00 AM', '4/11/1997 12:00:00 AM', '4/4/1997 12:00:00 AM', 1, 68.52, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10476, 'HILAA', 8, '3/17/1997 12:00:00 AM', '4/14/1997 12:00:00 AM', '3/24/1997 12:00:00 AM', 3, 4.41, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10477, 'PRINI', 5, '3/17/1997 12:00:00 AM', '4/14/1997 12:00:00 AM', '3/25/1997 12:00:00 AM', 2, 13.02, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', null, '1756', 'Portugal');
INSERT INTO Orders VALUES (10478, 'VICTE', 2, '3/18/1997 12:00:00 AM', '4/1/1997 12:00:00 AM', '3/26/1997 12:00:00 AM', 3, 4.81, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10479, 'RATTC', 3, '3/19/1997 12:00:00 AM', '4/16/1997 12:00:00 AM', '3/21/1997 12:00:00 AM', 3, 708.95, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10480, 'FOLIG', 6, '3/20/1997 12:00:00 AM', '4/17/1997 12:00:00 AM', '3/24/1997 12:00:00 AM', 2, 1.35, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', null, '59000', 'France');
INSERT INTO Orders VALUES (10481, 'RICAR', 8, '3/20/1997 12:00:00 AM', '4/17/1997 12:00:00 AM', '3/25/1997 12:00:00 AM', 2, 64.33, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10482, 'LAZYK', 1, '3/21/1997 12:00:00 AM', '4/18/1997 12:00:00 AM', '4/10/1997 12:00:00 AM', 3, 7.48, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA');
INSERT INTO Orders VALUES (10483, 'WHITC', 7, '3/24/1997 12:00:00 AM', '4/21/1997 12:00:00 AM', '4/25/1997 12:00:00 AM', 2, 15.28, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10484, 'BSBEV', 3, '3/24/1997 12:00:00 AM', '4/21/1997 12:00:00 AM', '4/1/1997 12:00:00 AM', 3, 6.88, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (10485, 'LINOD', 4, '3/25/1997 12:00:00 AM', '4/8/1997 12:00:00 AM', '3/31/1997 12:00:00 AM', 2, 64.45, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10486, 'HILAA', 1, '3/26/1997 12:00:00 AM', '4/23/1997 12:00:00 AM', '4/2/1997 12:00:00 AM', 2, 30.53, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10487, 'QUEEN', 2, '3/26/1997 12:00:00 AM', '4/23/1997 12:00:00 AM', '3/28/1997 12:00:00 AM', 2, 71.07, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10488, 'FRANK', 8, '3/27/1997 12:00:00 AM', '4/24/1997 12:00:00 AM', '4/2/1997 12:00:00 AM', 2, 4.93, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10489, 'PICCO', 6, '3/28/1997 12:00:00 AM', '4/25/1997 12:00:00 AM', '4/9/1997 12:00:00 AM', 2, 5.29, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (10490, 'HILAA', 7, '3/31/1997 12:00:00 AM', '4/28/1997 12:00:00 AM', '4/3/1997 12:00:00 AM', 2, 210.19, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10491, 'FURIB', 8, '3/31/1997 12:00:00 AM', '4/28/1997 12:00:00 AM', '4/8/1997 12:00:00 AM', 3, 16.96, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', null, '1675', 'Portugal');
INSERT INTO Orders VALUES (10492, 'BOTTM', 3, '4/1/1997 12:00:00 AM', '4/29/1997 12:00:00 AM', '4/11/1997 12:00:00 AM', 1, 62.89, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10493, 'LAMAI', 4, '4/2/1997 12:00:00 AM', '4/30/1997 12:00:00 AM', '4/10/1997 12:00:00 AM', 3, 10.64, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10494, 'COMMI', 4, '4/2/1997 12:00:00 AM', '4/30/1997 12:00:00 AM', '4/9/1997 12:00:00 AM', 2, 65.99, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders VALUES (10495, 'LAUGB', 3, '4/3/1997 12:00:00 AM', '5/1/1997 12:00:00 AM', '4/11/1997 12:00:00 AM', 3, 4.65, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada');
INSERT INTO Orders VALUES (10496, 'TRADH', 7, '4/4/1997 12:00:00 AM', '5/2/1997 12:00:00 AM', '4/7/1997 12:00:00 AM', 2, 46.77, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders VALUES (10497, 'LEHMS', 7, '4/4/1997 12:00:00 AM', '5/2/1997 12:00:00 AM', '4/7/1997 12:00:00 AM', 1, 36.21, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10498, 'HILAA', 8, '4/7/1997 12:00:00 AM', '5/5/1997 12:00:00 AM', '4/11/1997 12:00:00 AM', 2, 29.75, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10499, 'LILAS', 4, '4/8/1997 12:00:00 AM', '5/6/1997 12:00:00 AM', '4/16/1997 12:00:00 AM', 2, 102.02, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10500, 'LAMAI', 6, '4/9/1997 12:00:00 AM', '5/7/1997 12:00:00 AM', '4/17/1997 12:00:00 AM', 1, 42.68, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10501, 'BLAUS', 9, '4/9/1997 12:00:00 AM', '5/7/1997 12:00:00 AM', '4/16/1997 12:00:00 AM', 3, 8.85, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', null, '68306', 'Germany');
INSERT INTO Orders VALUES (10502, 'PERIC', 2, '4/10/1997 12:00:00 AM', '5/8/1997 12:00:00 AM', '4/29/1997 12:00:00 AM', 1, 69.32, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10503, 'HUNGO', 6, '4/11/1997 12:00:00 AM', '5/9/1997 12:00:00 AM', '4/16/1997 12:00:00 AM', 2, 16.74, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10504, 'WHITC', 4, '4/11/1997 12:00:00 AM', '5/9/1997 12:00:00 AM', '4/18/1997 12:00:00 AM', 3, 59.13, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10505, 'MEREP', 3, '4/14/1997 12:00:00 AM', '5/12/1997 12:00:00 AM', '4/21/1997 12:00:00 AM', 3, 7.13, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10506, 'KOENE', 9, '4/15/1997 12:00:00 AM', '5/13/1997 12:00:00 AM', '5/2/1997 12:00:00 AM', 2, 21.19, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10507, 'ANTON', 7, '4/15/1997 12:00:00 AM', '5/13/1997 12:00:00 AM', '4/22/1997 12:00:00 AM', 1, 47.45, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', null, '05023', 'Mexico');
INSERT INTO Orders VALUES (10508, 'OTTIK', 1, '4/16/1997 12:00:00 AM', '5/14/1997 12:00:00 AM', '5/13/1997 12:00:00 AM', 2, 4.99, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (10509, 'BLAUS', 4, '4/17/1997 12:00:00 AM', '5/15/1997 12:00:00 AM', '4/29/1997 12:00:00 AM', 1, 0.15, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', null, '68306', 'Germany');
INSERT INTO Orders VALUES (10510, 'SAVEA', 6, '4/18/1997 12:00:00 AM', '5/16/1997 12:00:00 AM', '4/28/1997 12:00:00 AM', 3, 367.63, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10511, 'BONAP', 4, '4/18/1997 12:00:00 AM', '5/16/1997 12:00:00 AM', '4/21/1997 12:00:00 AM', 3, 350.64, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10512, 'FAMIA', 7, '4/21/1997 12:00:00 AM', '5/19/1997 12:00:00 AM', '4/24/1997 12:00:00 AM', 2, 3.53, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders VALUES (10513, 'WANDK', 7, '4/22/1997 12:00:00 AM', '6/3/1997 12:00:00 AM', '4/28/1997 12:00:00 AM', 1, 105.65, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (10514, 'ERNSH', 3, '4/22/1997 12:00:00 AM', '5/20/1997 12:00:00 AM', '5/16/1997 12:00:00 AM', 2, 789.95, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10515, 'QUICK', 2, '4/23/1997 12:00:00 AM', '5/7/1997 12:00:00 AM', '5/23/1997 12:00:00 AM', 1, 204.47, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10516, 'HUNGO', 2, '4/24/1997 12:00:00 AM', '5/22/1997 12:00:00 AM', '5/1/1997 12:00:00 AM', 3, 62.78, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10517, 'NORTS', 3, '4/24/1997 12:00:00 AM', '5/22/1997 12:00:00 AM', '4/29/1997 12:00:00 AM', 3, 32.07, 'North/South', 'South House 300 Queensbridge', 'London', null, 'SW7 1RZ', 'UK');
INSERT INTO Orders VALUES (10518, 'TORTU', 4, '4/25/1997 12:00:00 AM', '5/9/1997 12:00:00 AM', '5/5/1997 12:00:00 AM', 2, 218.15, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10519, 'CHOPS', 6, '4/28/1997 12:00:00 AM', '5/26/1997 12:00:00 AM', '5/1/1997 12:00:00 AM', 3, 91.76, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', null, '3012', 'Switzerland');
INSERT INTO Orders VALUES (10520, 'SANTG', 7, '4/29/1997 12:00:00 AM', '5/27/1997 12:00:00 AM', '5/1/1997 12:00:00 AM', 1, 13.37, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', null, '4110', 'Norway');
INSERT INTO Orders VALUES (10521, 'CACTU', 8, '4/29/1997 12:00:00 AM', '5/27/1997 12:00:00 AM', '5/2/1997 12:00:00 AM', 2, 17.22, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10522, 'LEHMS', 4, '4/30/1997 12:00:00 AM', '5/28/1997 12:00:00 AM', '5/6/1997 12:00:00 AM', 1, 45.33, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10523, 'SEVES', 7, '5/1/1997 12:00:00 AM', '5/29/1997 12:00:00 AM', '5/30/1997 12:00:00 AM', 2, 77.63, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK');
INSERT INTO Orders VALUES (10524, 'BERGS', 1, '5/1/1997 12:00:00 AM', '5/29/1997 12:00:00 AM', '5/7/1997 12:00:00 AM', 2, 244.79, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10525, 'BONAP', 1, '5/2/1997 12:00:00 AM', '5/30/1997 12:00:00 AM', '5/23/1997 12:00:00 AM', 2, 11.06, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10526, 'WARTH', 4, '5/5/1997 12:00:00 AM', '6/2/1997 12:00:00 AM', '5/15/1997 12:00:00 AM', 2, 58.59, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10527, 'QUICK', 7, '5/5/1997 12:00:00 AM', '6/2/1997 12:00:00 AM', '5/7/1997 12:00:00 AM', 1, 41.9, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10528, 'GREAL', 6, '5/6/1997 12:00:00 AM', '5/20/1997 12:00:00 AM', '5/9/1997 12:00:00 AM', 2, 3.35, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (10529, 'MAISD', 5, '5/7/1997 12:00:00 AM', '6/4/1997 12:00:00 AM', '5/9/1997 12:00:00 AM', 2, 66.69, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', null, 'B-1180', 'Belgium');
INSERT INTO Orders VALUES (10530, 'PICCO', 3, '5/8/1997 12:00:00 AM', '6/5/1997 12:00:00 AM', '5/12/1997 12:00:00 AM', 2, 339.22, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (10531, 'OCEAN', 7, '5/8/1997 12:00:00 AM', '6/5/1997 12:00:00 AM', '5/19/1997 12:00:00 AM', 1, 8.12, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10532, 'EASTC', 7, '5/9/1997 12:00:00 AM', '6/6/1997 12:00:00 AM', '5/12/1997 12:00:00 AM', 3, 74.46, 'Eastern Connection', '35 King George', 'London', null, 'WX3 6FW', 'UK');
INSERT INTO Orders VALUES (10533, 'FOLKO', 8, '5/12/1997 12:00:00 AM', '6/9/1997 12:00:00 AM', '5/22/1997 12:00:00 AM', 1, 188.04, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10534, 'LEHMS', 8, '5/12/1997 12:00:00 AM', '6/9/1997 12:00:00 AM', '5/14/1997 12:00:00 AM', 2, 27.94, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10535, 'ANTON', 4, '5/13/1997 12:00:00 AM', '6/10/1997 12:00:00 AM', '5/21/1997 12:00:00 AM', 1, 15.64, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', null, '05023', 'Mexico');
INSERT INTO Orders VALUES (10536, 'LEHMS', 3, '5/14/1997 12:00:00 AM', '6/11/1997 12:00:00 AM', '6/6/1997 12:00:00 AM', 2, 58.88, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10537, 'RICSU', 1, '5/14/1997 12:00:00 AM', '5/28/1997 12:00:00 AM', '5/19/1997 12:00:00 AM', 1, 78.85, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (10538, 'BSBEV', 9, '5/15/1997 12:00:00 AM', '6/12/1997 12:00:00 AM', '5/16/1997 12:00:00 AM', 3, 4.87, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (10539, 'BSBEV', 6, '5/16/1997 12:00:00 AM', '6/13/1997 12:00:00 AM', '5/23/1997 12:00:00 AM', 3, 12.36, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (10540, 'QUICK', 3, '5/19/1997 12:00:00 AM', '6/16/1997 12:00:00 AM', '6/13/1997 12:00:00 AM', 3, 1007.64, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10541, 'HANAR', 2, '5/19/1997 12:00:00 AM', '6/16/1997 12:00:00 AM', '5/29/1997 12:00:00 AM', 1, 68.65, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10542, 'KOENE', 1, '5/20/1997 12:00:00 AM', '6/17/1997 12:00:00 AM', '5/26/1997 12:00:00 AM', 3, 10.95, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10543, 'LILAS', 8, '5/21/1997 12:00:00 AM', '6/18/1997 12:00:00 AM', '5/23/1997 12:00:00 AM', 2, 48.17, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10544, 'LONEP', 4, '5/21/1997 12:00:00 AM', '6/18/1997 12:00:00 AM', '5/30/1997 12:00:00 AM', 1, 24.91, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders VALUES (10545, 'LAZYK', 8, '5/22/1997 12:00:00 AM', '6/19/1997 12:00:00 AM', '6/26/1997 12:00:00 AM', 2, 11.92, 'Lazy K Kountry Store', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'USA');
INSERT INTO Orders VALUES (10546, 'VICTE', 1, '5/23/1997 12:00:00 AM', '6/20/1997 12:00:00 AM', '5/27/1997 12:00:00 AM', 3, 194.72, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10547, 'SEVES', 3, '5/23/1997 12:00:00 AM', '6/20/1997 12:00:00 AM', '6/2/1997 12:00:00 AM', 2, 178.43, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK');
INSERT INTO Orders VALUES (10548, 'TOMSP', 3, '5/26/1997 12:00:00 AM', '6/23/1997 12:00:00 AM', '6/2/1997 12:00:00 AM', 2, 1.43, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', null, '44087', 'Germany');
INSERT INTO Orders VALUES (10549, 'QUICK', 5, '5/27/1997 12:00:00 AM', '6/10/1997 12:00:00 AM', '5/30/1997 12:00:00 AM', 1, 171.24, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10550, 'GODOS', 7, '5/28/1997 12:00:00 AM', '6/25/1997 12:00:00 AM', '6/6/1997 12:00:00 AM', 3, 4.32, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (10551, 'FURIB', 4, '5/28/1997 12:00:00 AM', '7/9/1997 12:00:00 AM', '6/6/1997 12:00:00 AM', 3, 72.95, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', null, '1675', 'Portugal');
INSERT INTO Orders VALUES (10552, 'HILAA', 2, '5/29/1997 12:00:00 AM', '6/26/1997 12:00:00 AM', '6/5/1997 12:00:00 AM', 1, 83.22, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10553, 'WARTH', 2, '5/30/1997 12:00:00 AM', '6/27/1997 12:00:00 AM', '6/3/1997 12:00:00 AM', 2, 149.49, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10554, 'OTTIK', 4, '5/30/1997 12:00:00 AM', '6/27/1997 12:00:00 AM', '6/5/1997 12:00:00 AM', 3, 120.97, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (10555, 'SAVEA', 6, '6/2/1997 12:00:00 AM', '6/30/1997 12:00:00 AM', '6/4/1997 12:00:00 AM', 3, 252.49, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10556, 'SIMOB', 2, '6/3/1997 12:00:00 AM', '7/15/1997 12:00:00 AM', '6/13/1997 12:00:00 AM', 1, 9.8, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', null, '1734', 'Denmark');
INSERT INTO Orders VALUES (10557, 'LEHMS', 9, '6/3/1997 12:00:00 AM', '6/17/1997 12:00:00 AM', '6/6/1997 12:00:00 AM', 2, 96.72, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10558, 'AROUT', 1, '6/4/1997 12:00:00 AM', '7/2/1997 12:00:00 AM', '6/10/1997 12:00:00 AM', 2, 72.97, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10559, 'BLONP', 6, '6/5/1997 12:00:00 AM', '7/3/1997 12:00:00 AM', '6/13/1997 12:00:00 AM', 1, 8.05, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10560, 'FRANK', 8, '6/6/1997 12:00:00 AM', '7/4/1997 12:00:00 AM', '6/9/1997 12:00:00 AM', 1, 36.65, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10561, 'FOLKO', 2, '6/6/1997 12:00:00 AM', '7/4/1997 12:00:00 AM', '6/9/1997 12:00:00 AM', 2, 242.21, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10562, 'REGGC', 1, '6/9/1997 12:00:00 AM', '7/7/1997 12:00:00 AM', '6/12/1997 12:00:00 AM', 1, 22.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10563, 'RICAR', 2, '6/10/1997 12:00:00 AM', '7/22/1997 12:00:00 AM', '6/24/1997 12:00:00 AM', 2, 60.43, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10564, 'RATTC', 4, '6/10/1997 12:00:00 AM', '7/8/1997 12:00:00 AM', '6/16/1997 12:00:00 AM', 3, 13.75, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10565, 'MEREP', 8, '6/11/1997 12:00:00 AM', '7/9/1997 12:00:00 AM', '6/18/1997 12:00:00 AM', 2, 7.15, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10566, 'BLONP', 9, '6/12/1997 12:00:00 AM', '7/10/1997 12:00:00 AM', '6/18/1997 12:00:00 AM', 1, 88.4, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10567, 'HUNGO', 1, '6/12/1997 12:00:00 AM', '7/10/1997 12:00:00 AM', '6/17/1997 12:00:00 AM', 1, 33.97, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10568, 'GALED', 3, '6/13/1997 12:00:00 AM', '7/11/1997 12:00:00 AM', '7/9/1997 12:00:00 AM', 3, 6.54, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', null, '8022', 'Spain');
INSERT INTO Orders VALUES (10569, 'RATTC', 5, '6/16/1997 12:00:00 AM', '7/14/1997 12:00:00 AM', '7/11/1997 12:00:00 AM', 1, 58.98, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10570, 'MEREP', 3, '6/17/1997 12:00:00 AM', '7/15/1997 12:00:00 AM', '6/19/1997 12:00:00 AM', 3, 188.99, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10571, 'ERNSH', 8, '6/17/1997 12:00:00 AM', '7/29/1997 12:00:00 AM', '7/4/1997 12:00:00 AM', 3, 26.06, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10572, 'BERGS', 3, '6/18/1997 12:00:00 AM', '7/16/1997 12:00:00 AM', '6/25/1997 12:00:00 AM', 2, 116.43, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10573, 'ANTON', 7, '6/19/1997 12:00:00 AM', '7/17/1997 12:00:00 AM', '6/20/1997 12:00:00 AM', 3, 84.84, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', null, '05023', 'Mexico');
INSERT INTO Orders VALUES (10574, 'TRAIH', 4, '6/19/1997 12:00:00 AM', '7/17/1997 12:00:00 AM', '6/30/1997 12:00:00 AM', 2, 37.6, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA');
INSERT INTO Orders VALUES (10575, 'MORGK', 5, '6/20/1997 12:00:00 AM', '7/4/1997 12:00:00 AM', '6/30/1997 12:00:00 AM', 1, 127.34, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', null, '04179', 'Germany');
INSERT INTO Orders VALUES (10576, 'TORTU', 3, '6/23/1997 12:00:00 AM', '7/7/1997 12:00:00 AM', '6/30/1997 12:00:00 AM', 3, 18.56, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10577, 'TRAIH', 9, '6/23/1997 12:00:00 AM', '8/4/1997 12:00:00 AM', '6/30/1997 12:00:00 AM', 2, 25.41, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA');
INSERT INTO Orders VALUES (10578, 'BSBEV', 4, '6/24/1997 12:00:00 AM', '7/22/1997 12:00:00 AM', '7/25/1997 12:00:00 AM', 3, 29.6, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (10579, 'LETSS', 1, '6/25/1997 12:00:00 AM', '7/23/1997 12:00:00 AM', '7/4/1997 12:00:00 AM', 2, 13.73, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA');
INSERT INTO Orders VALUES (10580, 'OTTIK', 4, '6/26/1997 12:00:00 AM', '7/24/1997 12:00:00 AM', '7/1/1997 12:00:00 AM', 3, 75.89, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (10581, 'FAMIA', 3, '6/26/1997 12:00:00 AM', '7/24/1997 12:00:00 AM', '7/2/1997 12:00:00 AM', 1, 3.01, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders VALUES (10582, 'BLAUS', 3, '6/27/1997 12:00:00 AM', '7/25/1997 12:00:00 AM', '7/14/1997 12:00:00 AM', 2, 27.71, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', null, '68306', 'Germany');
INSERT INTO Orders VALUES (10583, 'WARTH', 2, '6/30/1997 12:00:00 AM', '7/28/1997 12:00:00 AM', '7/4/1997 12:00:00 AM', 2, 7.28, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10584, 'BLONP', 4, '6/30/1997 12:00:00 AM', '7/28/1997 12:00:00 AM', '7/4/1997 12:00:00 AM', 1, 59.14, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10585, 'WELLI', 7, '7/1/1997 12:00:00 AM', '7/29/1997 12:00:00 AM', '7/10/1997 12:00:00 AM', 1, 13.41, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders VALUES (10586, 'REGGC', 9, '7/2/1997 12:00:00 AM', '7/30/1997 12:00:00 AM', '7/9/1997 12:00:00 AM', 1, 0.48, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10587, 'QUEDE', 1, '7/2/1997 12:00:00 AM', '7/30/1997 12:00:00 AM', '7/9/1997 12:00:00 AM', 1, 62.52, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders VALUES (10588, 'QUICK', 2, '7/3/1997 12:00:00 AM', '7/31/1997 12:00:00 AM', '7/10/1997 12:00:00 AM', 3, 194.67, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10589, 'GREAL', 8, '7/4/1997 12:00:00 AM', '8/1/1997 12:00:00 AM', '7/14/1997 12:00:00 AM', 2, 4.42, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (10590, 'MEREP', 4, '7/7/1997 12:00:00 AM', '8/4/1997 12:00:00 AM', '7/14/1997 12:00:00 AM', 3, 44.77, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10591, 'VAFFE', 1, '7/7/1997 12:00:00 AM', '7/21/1997 12:00:00 AM', '7/16/1997 12:00:00 AM', 1, 55.92, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10592, 'LEHMS', 3, '7/8/1997 12:00:00 AM', '8/5/1997 12:00:00 AM', '7/16/1997 12:00:00 AM', 1, 32.1, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10593, 'LEHMS', 7, '7/9/1997 12:00:00 AM', '8/6/1997 12:00:00 AM', '8/13/1997 12:00:00 AM', 2, 174.2, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10594, 'OLDWO', 3, '7/9/1997 12:00:00 AM', '8/6/1997 12:00:00 AM', '7/16/1997 12:00:00 AM', 2, 5.24, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (10595, 'ERNSH', 2, '7/10/1997 12:00:00 AM', '8/7/1997 12:00:00 AM', '7/14/1997 12:00:00 AM', 1, 96.78, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10596, 'WHITC', 8, '7/11/1997 12:00:00 AM', '8/8/1997 12:00:00 AM', '8/12/1997 12:00:00 AM', 1, 16.34, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10597, 'PICCO', 7, '7/11/1997 12:00:00 AM', '8/8/1997 12:00:00 AM', '7/18/1997 12:00:00 AM', 3, 35.12, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (10598, 'RATTC', 1, '7/14/1997 12:00:00 AM', '8/11/1997 12:00:00 AM', '7/18/1997 12:00:00 AM', 3, 44.42, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10599, 'BSBEV', 6, '7/15/1997 12:00:00 AM', '8/26/1997 12:00:00 AM', '7/21/1997 12:00:00 AM', 3, 29.98, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (10600, 'HUNGC', 4, '7/16/1997 12:00:00 AM', '8/13/1997 12:00:00 AM', '7/21/1997 12:00:00 AM', 1, 45.13, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders VALUES (10601, 'HILAA', 7, '7/16/1997 12:00:00 AM', '8/27/1997 12:00:00 AM', '7/22/1997 12:00:00 AM', 1, 58.3, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10602, 'VAFFE', 8, '7/17/1997 12:00:00 AM', '8/14/1997 12:00:00 AM', '7/22/1997 12:00:00 AM', 2, 2.92, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10603, 'SAVEA', 8, '7/18/1997 12:00:00 AM', '8/15/1997 12:00:00 AM', '8/8/1997 12:00:00 AM', 2, 48.77, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10604, 'FURIB', 1, '7/18/1997 12:00:00 AM', '8/15/1997 12:00:00 AM', '7/29/1997 12:00:00 AM', 1, 7.46, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', null, '1675', 'Portugal');
INSERT INTO Orders VALUES (10605, 'MEREP', 1, '7/21/1997 12:00:00 AM', '8/18/1997 12:00:00 AM', '7/29/1997 12:00:00 AM', 2, 379.13, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10606, 'TRADH', 4, '7/22/1997 12:00:00 AM', '8/19/1997 12:00:00 AM', '7/31/1997 12:00:00 AM', 3, 79.4, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders VALUES (10607, 'SAVEA', 5, '7/22/1997 12:00:00 AM', '8/19/1997 12:00:00 AM', '7/25/1997 12:00:00 AM', 1, 200.24, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10608, 'TOMSP', 4, '7/23/1997 12:00:00 AM', '8/20/1997 12:00:00 AM', '8/1/1997 12:00:00 AM', 2, 27.79, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', null, '44087', 'Germany');
INSERT INTO Orders VALUES (10609, 'DUMON', 7, '7/24/1997 12:00:00 AM', '8/21/1997 12:00:00 AM', '7/30/1997 12:00:00 AM', 2, 1.85, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', null, '44000', 'France');
INSERT INTO Orders VALUES (10610, 'LAMAI', 8, '7/25/1997 12:00:00 AM', '8/22/1997 12:00:00 AM', '8/6/1997 12:00:00 AM', 1, 26.78, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10611, 'WOLZA', 6, '7/25/1997 12:00:00 AM', '8/22/1997 12:00:00 AM', '8/1/1997 12:00:00 AM', 2, 80.65, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', null, '01-012', 'Poland');
INSERT INTO Orders VALUES (10612, 'SAVEA', 1, '7/28/1997 12:00:00 AM', '8/25/1997 12:00:00 AM', '8/1/1997 12:00:00 AM', 2, 544.08, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10613, 'HILAA', 4, '7/29/1997 12:00:00 AM', '8/26/1997 12:00:00 AM', '8/1/1997 12:00:00 AM', 2, 8.11, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10614, 'BLAUS', 8, '7/29/1997 12:00:00 AM', '8/26/1997 12:00:00 AM', '8/1/1997 12:00:00 AM', 3, 1.93, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', null, '68306', 'Germany');
INSERT INTO Orders VALUES (10615, 'WILMK', 2, '7/30/1997 12:00:00 AM', '8/27/1997 12:00:00 AM', '8/6/1997 12:00:00 AM', 3, 0.75, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', null, '21240', 'Finland');
INSERT INTO Orders VALUES (10616, 'GREAL', 1, '7/31/1997 12:00:00 AM', '8/28/1997 12:00:00 AM', '8/5/1997 12:00:00 AM', 2, 116.53, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (10617, 'GREAL', 4, '7/31/1997 12:00:00 AM', '8/28/1997 12:00:00 AM', '8/4/1997 12:00:00 AM', 2, 18.53, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (10618, 'MEREP', 1, '8/1/1997 12:00:00 AM', '9/12/1997 12:00:00 AM', '8/8/1997 12:00:00 AM', 1, 154.68, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10619, 'MEREP', 3, '8/4/1997 12:00:00 AM', '9/1/1997 12:00:00 AM', '8/7/1997 12:00:00 AM', 3, 91.05, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10620, 'LAUGB', 2, '8/5/1997 12:00:00 AM', '9/2/1997 12:00:00 AM', '8/14/1997 12:00:00 AM', 3, 0.94, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada');
INSERT INTO Orders VALUES (10621, 'ISLAT', 4, '8/5/1997 12:00:00 AM', '9/2/1997 12:00:00 AM', '8/11/1997 12:00:00 AM', 2, 23.73, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10622, 'RICAR', 4, '8/6/1997 12:00:00 AM', '9/3/1997 12:00:00 AM', '8/11/1997 12:00:00 AM', 3, 50.97, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10623, 'FRANK', 8, '8/7/1997 12:00:00 AM', '9/4/1997 12:00:00 AM', '8/12/1997 12:00:00 AM', 2, 97.18, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10624, 'THECR', 4, '8/7/1997 12:00:00 AM', '9/4/1997 12:00:00 AM', '8/19/1997 12:00:00 AM', 2, 94.8, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA');
INSERT INTO Orders VALUES (10625, 'ANATR', 3, '8/8/1997 12:00:00 AM', '9/5/1997 12:00:00 AM', '8/14/1997 12:00:00 AM', 1, 43.9, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', null, '05021', 'Mexico');
INSERT INTO Orders VALUES (10626, 'BERGS', 1, '8/11/1997 12:00:00 AM', '9/8/1997 12:00:00 AM', '8/20/1997 12:00:00 AM', 2, 138.69, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10627, 'SAVEA', 8, '8/11/1997 12:00:00 AM', '9/22/1997 12:00:00 AM', '8/21/1997 12:00:00 AM', 3, 107.46, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10628, 'BLONP', 4, '8/12/1997 12:00:00 AM', '9/9/1997 12:00:00 AM', '8/20/1997 12:00:00 AM', 3, 30.36, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10629, 'GODOS', 4, '8/12/1997 12:00:00 AM', '9/9/1997 12:00:00 AM', '8/20/1997 12:00:00 AM', 3, 85.46, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (10630, 'KOENE', 1, '8/13/1997 12:00:00 AM', '9/10/1997 12:00:00 AM', '8/19/1997 12:00:00 AM', 2, 32.35, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10631, 'LAMAI', 8, '8/14/1997 12:00:00 AM', '9/11/1997 12:00:00 AM', '8/15/1997 12:00:00 AM', 1, 0.87, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10632, 'WANDK', 8, '8/14/1997 12:00:00 AM', '9/11/1997 12:00:00 AM', '8/19/1997 12:00:00 AM', 1, 41.38, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (10633, 'ERNSH', 7, '8/15/1997 12:00:00 AM', '9/12/1997 12:00:00 AM', '8/18/1997 12:00:00 AM', 3, 477.9, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10634, 'FOLIG', 4, '8/15/1997 12:00:00 AM', '9/12/1997 12:00:00 AM', '8/21/1997 12:00:00 AM', 3, 487.38, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', null, '59000', 'France');
INSERT INTO Orders VALUES (10635, 'MAGAA', 8, '8/18/1997 12:00:00 AM', '9/15/1997 12:00:00 AM', '8/21/1997 12:00:00 AM', 3, 47.46, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10636, 'WARTH', 4, '8/19/1997 12:00:00 AM', '9/16/1997 12:00:00 AM', '8/26/1997 12:00:00 AM', 1, 1.15, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10637, 'QUEEN', 6, '8/19/1997 12:00:00 AM', '9/16/1997 12:00:00 AM', '8/26/1997 12:00:00 AM', 1, 201.29, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10638, 'LINOD', 3, '8/20/1997 12:00:00 AM', '9/17/1997 12:00:00 AM', '9/1/1997 12:00:00 AM', 1, 158.44, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10639, 'SANTG', 7, '8/20/1997 12:00:00 AM', '9/17/1997 12:00:00 AM', '8/27/1997 12:00:00 AM', 3, 38.64, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', null, '4110', 'Norway');
INSERT INTO Orders VALUES (10640, 'WANDK', 4, '8/21/1997 12:00:00 AM', '9/18/1997 12:00:00 AM', '8/28/1997 12:00:00 AM', 1, 23.55, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (10641, 'HILAA', 4, '8/22/1997 12:00:00 AM', '9/19/1997 12:00:00 AM', '8/26/1997 12:00:00 AM', 2, 179.61, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10642, 'SIMOB', 7, '8/22/1997 12:00:00 AM', '9/19/1997 12:00:00 AM', '9/5/1997 12:00:00 AM', 3, 41.89, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', null, '1734', 'Denmark');
INSERT INTO Orders VALUES (10643, 'ALFKI', 6, '8/25/1997 12:00:00 AM', '9/22/1997 12:00:00 AM', '9/2/1997 12:00:00 AM', 1, 29.46, 'Alfreds Futterkiste', 'Obere Str. 57', 'Berlin', null, '12209', 'Germany');
INSERT INTO Orders VALUES (10644, 'WELLI', 3, '8/25/1997 12:00:00 AM', '9/22/1997 12:00:00 AM', '9/1/1997 12:00:00 AM', 2, 0.14, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders VALUES (10645, 'HANAR', 4, '8/26/1997 12:00:00 AM', '9/23/1997 12:00:00 AM', '9/2/1997 12:00:00 AM', 1, 12.41, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10646, 'HUNGO', 9, '8/27/1997 12:00:00 AM', '10/8/1997 12:00:00 AM', '9/3/1997 12:00:00 AM', 3, 142.33, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10647, 'QUEDE', 4, '8/27/1997 12:00:00 AM', '9/10/1997 12:00:00 AM', '9/3/1997 12:00:00 AM', 2, 45.54, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders VALUES (10648, 'RICAR', 5, '8/28/1997 12:00:00 AM', '10/9/1997 12:00:00 AM', '9/9/1997 12:00:00 AM', 2, 14.25, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10649, 'MAISD', 5, '8/28/1997 12:00:00 AM', '9/25/1997 12:00:00 AM', '8/29/1997 12:00:00 AM', 3, 6.2, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', null, 'B-1180', 'Belgium');
INSERT INTO Orders VALUES (10650, 'FAMIA', 5, '8/29/1997 12:00:00 AM', '9/26/1997 12:00:00 AM', '9/3/1997 12:00:00 AM', 3, 176.81, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders VALUES (10651, 'WANDK', 8, '9/1/1997 12:00:00 AM', '9/29/1997 12:00:00 AM', '9/11/1997 12:00:00 AM', 2, 20.6, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (10652, 'GOURL', 4, '9/1/1997 12:00:00 AM', '9/29/1997 12:00:00 AM', '9/8/1997 12:00:00 AM', 2, 7.14, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders VALUES (10653, 'FRANK', 1, '9/2/1997 12:00:00 AM', '9/30/1997 12:00:00 AM', '9/19/1997 12:00:00 AM', 1, 93.25, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10654, 'BERGS', 5, '9/2/1997 12:00:00 AM', '9/30/1997 12:00:00 AM', '9/11/1997 12:00:00 AM', 1, 55.26, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10655, 'REGGC', 1, '9/3/1997 12:00:00 AM', '10/1/1997 12:00:00 AM', '9/11/1997 12:00:00 AM', 2, 4.41, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10656, 'GREAL', 6, '9/4/1997 12:00:00 AM', '10/2/1997 12:00:00 AM', '9/10/1997 12:00:00 AM', 1, 57.15, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (10657, 'SAVEA', 2, '9/4/1997 12:00:00 AM', '10/2/1997 12:00:00 AM', '9/15/1997 12:00:00 AM', 2, 352.69, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10658, 'QUICK', 4, '9/5/1997 12:00:00 AM', '10/3/1997 12:00:00 AM', '9/8/1997 12:00:00 AM', 1, 364.15, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10659, 'QUEEN', 7, '9/5/1997 12:00:00 AM', '10/3/1997 12:00:00 AM', '9/10/1997 12:00:00 AM', 2, 105.81, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10660, 'HUNGC', 8, '9/8/1997 12:00:00 AM', '10/6/1997 12:00:00 AM', '10/15/1997 12:00:00 AM', 1, 111.29, 'Hungry Coyote Import Store', 'City Center Plaza 516 Main St.', 'Elgin', 'OR', '97827', 'USA');
INSERT INTO Orders VALUES (10661, 'HUNGO', 7, '9/9/1997 12:00:00 AM', '10/7/1997 12:00:00 AM', '9/15/1997 12:00:00 AM', 3, 17.55, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10662, 'LONEP', 3, '9/9/1997 12:00:00 AM', '10/7/1997 12:00:00 AM', '9/18/1997 12:00:00 AM', 2, 1.28, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders VALUES (10663, 'BONAP', 2, '9/10/1997 12:00:00 AM', '9/24/1997 12:00:00 AM', '10/3/1997 12:00:00 AM', 2, 113.15, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10664, 'FURIB', 1, '9/10/1997 12:00:00 AM', '10/8/1997 12:00:00 AM', '9/19/1997 12:00:00 AM', 3, 1.27, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', null, '1675', 'Portugal');
INSERT INTO Orders VALUES (10665, 'LONEP', 1, '9/11/1997 12:00:00 AM', '10/9/1997 12:00:00 AM', '9/17/1997 12:00:00 AM', 2, 26.31, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders VALUES (10666, 'RICSU', 7, '9/12/1997 12:00:00 AM', '10/10/1997 12:00:00 AM', '9/22/1997 12:00:00 AM', 2, 232.42, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (10667, 'ERNSH', 7, '9/12/1997 12:00:00 AM', '10/10/1997 12:00:00 AM', '9/19/1997 12:00:00 AM', 1, 78.09, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10668, 'WANDK', 1, '9/15/1997 12:00:00 AM', '10/13/1997 12:00:00 AM', '9/23/1997 12:00:00 AM', 2, 47.22, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (10669, 'SIMOB', 2, '9/15/1997 12:00:00 AM', '10/13/1997 12:00:00 AM', '9/22/1997 12:00:00 AM', 1, 24.39, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', null, '1734', 'Denmark');
INSERT INTO Orders VALUES (10670, 'FRANK', 4, '9/16/1997 12:00:00 AM', '10/14/1997 12:00:00 AM', '9/18/1997 12:00:00 AM', 1, 203.48, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10671, 'FRANR', 1, '9/17/1997 12:00:00 AM', '10/15/1997 12:00:00 AM', '9/24/1997 12:00:00 AM', 1, 30.34, 'France restauration', '54, rue Royale', 'Nantes', null, '44000', 'France');
INSERT INTO Orders VALUES (10672, 'BERGS', 9, '9/17/1997 12:00:00 AM', '10/1/1997 12:00:00 AM', '9/26/1997 12:00:00 AM', 2, 95.75, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10673, 'WILMK', 2, '9/18/1997 12:00:00 AM', '10/16/1997 12:00:00 AM', '9/19/1997 12:00:00 AM', 1, 22.76, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', null, '21240', 'Finland');
INSERT INTO Orders VALUES (10674, 'ISLAT', 4, '9/18/1997 12:00:00 AM', '10/16/1997 12:00:00 AM', '9/30/1997 12:00:00 AM', 2, 0.9, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10675, 'FRANK', 5, '9/19/1997 12:00:00 AM', '10/17/1997 12:00:00 AM', '9/23/1997 12:00:00 AM', 2, 31.85, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10676, 'TORTU', 2, '9/22/1997 12:00:00 AM', '10/20/1997 12:00:00 AM', '9/29/1997 12:00:00 AM', 2, 2.01, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10677, 'ANTON', 1, '9/22/1997 12:00:00 AM', '10/20/1997 12:00:00 AM', '9/26/1997 12:00:00 AM', 3, 4.03, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', null, '05023', 'Mexico');
INSERT INTO Orders VALUES (10678, 'SAVEA', 7, '9/23/1997 12:00:00 AM', '10/21/1997 12:00:00 AM', '10/16/1997 12:00:00 AM', 3, 388.98, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10679, 'BLONP', 8, '9/23/1997 12:00:00 AM', '10/21/1997 12:00:00 AM', '9/30/1997 12:00:00 AM', 3, 27.94, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10680, 'OLDWO', 1, '9/24/1997 12:00:00 AM', '10/22/1997 12:00:00 AM', '9/26/1997 12:00:00 AM', 1, 26.61, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (10681, 'GREAL', 3, '9/25/1997 12:00:00 AM', '10/23/1997 12:00:00 AM', '9/30/1997 12:00:00 AM', 3, 76.13, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (10682, 'ANTON', 3, '9/25/1997 12:00:00 AM', '10/23/1997 12:00:00 AM', '10/1/1997 12:00:00 AM', 2, 36.13, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', null, '05023', 'Mexico');
INSERT INTO Orders VALUES (10683, 'DUMON', 2, '9/26/1997 12:00:00 AM', '10/24/1997 12:00:00 AM', '10/1/1997 12:00:00 AM', 1, 4.4, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', null, '44000', 'France');
INSERT INTO Orders VALUES (10684, 'OTTIK', 3, '9/26/1997 12:00:00 AM', '10/24/1997 12:00:00 AM', '9/30/1997 12:00:00 AM', 1, 145.63, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (10685, 'GOURL', 4, '9/29/1997 12:00:00 AM', '10/13/1997 12:00:00 AM', '10/3/1997 12:00:00 AM', 2, 33.75, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders VALUES (10686, 'PICCO', 2, '9/30/1997 12:00:00 AM', '10/28/1997 12:00:00 AM', '10/8/1997 12:00:00 AM', 1, 96.5, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (10687, 'HUNGO', 9, '9/30/1997 12:00:00 AM', '10/28/1997 12:00:00 AM', '10/30/1997 12:00:00 AM', 2, 296.43, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10688, 'VAFFE', 4, '10/1/1997 12:00:00 AM', '10/15/1997 12:00:00 AM', '10/7/1997 12:00:00 AM', 2, 299.09, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10689, 'BERGS', 1, '10/1/1997 12:00:00 AM', '10/29/1997 12:00:00 AM', '10/7/1997 12:00:00 AM', 2, 13.42, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10690, 'HANAR', 1, '10/2/1997 12:00:00 AM', '10/30/1997 12:00:00 AM', '10/3/1997 12:00:00 AM', 1, 15.8, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10691, 'QUICK', 2, '10/3/1997 12:00:00 AM', '11/14/1997 12:00:00 AM', '10/22/1997 12:00:00 AM', 2, 810.05, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10692, 'ALFKI', 4, '10/3/1997 12:00:00 AM', '10/31/1997 12:00:00 AM', '10/13/1997 12:00:00 AM', 2, 61.02, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', null, '12209', 'Germany');
INSERT INTO Orders VALUES (10693, 'WHITC', 3, '10/6/1997 12:00:00 AM', '10/20/1997 12:00:00 AM', '10/10/1997 12:00:00 AM', 3, 139.34, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10694, 'QUICK', 8, '10/6/1997 12:00:00 AM', '11/3/1997 12:00:00 AM', '10/9/1997 12:00:00 AM', 3, 398.36, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10695, 'WILMK', 7, '10/7/1997 12:00:00 AM', '11/18/1997 12:00:00 AM', '10/14/1997 12:00:00 AM', 1, 16.72, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', null, '21240', 'Finland');
INSERT INTO Orders VALUES (10696, 'WHITC', 8, '10/8/1997 12:00:00 AM', '11/19/1997 12:00:00 AM', '10/14/1997 12:00:00 AM', 3, 102.55, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10697, 'LINOD', 3, '10/8/1997 12:00:00 AM', '11/5/1997 12:00:00 AM', '10/14/1997 12:00:00 AM', 1, 45.52, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10698, 'ERNSH', 4, '10/9/1997 12:00:00 AM', '11/6/1997 12:00:00 AM', '10/17/1997 12:00:00 AM', 1, 272.47, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10699, 'MORGK', 3, '10/9/1997 12:00:00 AM', '11/6/1997 12:00:00 AM', '10/13/1997 12:00:00 AM', 3, 0.58, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', null, '04179', 'Germany');
INSERT INTO Orders VALUES (10700, 'SAVEA', 3, '10/10/1997 12:00:00 AM', '11/7/1997 12:00:00 AM', '10/16/1997 12:00:00 AM', 1, 65.1, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10701, 'HUNGO', 6, '10/13/1997 12:00:00 AM', '10/27/1997 12:00:00 AM', '10/15/1997 12:00:00 AM', 3, 220.31, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10702, 'ALFKI', 4, '10/13/1997 12:00:00 AM', '11/24/1997 12:00:00 AM', '10/21/1997 12:00:00 AM', 1, 23.94, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', null, '12209', 'Germany');
INSERT INTO Orders VALUES (10703, 'FOLKO', 6, '10/14/1997 12:00:00 AM', '11/11/1997 12:00:00 AM', '10/20/1997 12:00:00 AM', 2, 152.3, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10704, 'QUEEN', 6, '10/14/1997 12:00:00 AM', '11/11/1997 12:00:00 AM', '11/7/1997 12:00:00 AM', 1, 4.78, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10705, 'HILAA', 9, '10/15/1997 12:00:00 AM', '11/12/1997 12:00:00 AM', '11/18/1997 12:00:00 AM', 2, 3.52, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10706, 'OLDWO', 8, '10/16/1997 12:00:00 AM', '11/13/1997 12:00:00 AM', '10/21/1997 12:00:00 AM', 3, 135.63, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (10707, 'AROUT', 4, '10/16/1997 12:00:00 AM', '10/30/1997 12:00:00 AM', '10/23/1997 12:00:00 AM', 3, 21.74, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10708, 'THEBI', 6, '10/17/1997 12:00:00 AM', '11/28/1997 12:00:00 AM', '11/5/1997 12:00:00 AM', 2, 2.96, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA');
INSERT INTO Orders VALUES (10709, 'GOURL', 1, '10/17/1997 12:00:00 AM', '11/14/1997 12:00:00 AM', '11/20/1997 12:00:00 AM', 3, 210.8, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders VALUES (10710, 'FRANS', 1, '10/20/1997 12:00:00 AM', '11/17/1997 12:00:00 AM', '10/23/1997 12:00:00 AM', 1, 4.98, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', null, '10100', 'Italy');
INSERT INTO Orders VALUES (10711, 'SAVEA', 5, '10/21/1997 12:00:00 AM', '12/2/1997 12:00:00 AM', '10/29/1997 12:00:00 AM', 2, 52.41, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10712, 'HUNGO', 3, '10/21/1997 12:00:00 AM', '11/18/1997 12:00:00 AM', '10/31/1997 12:00:00 AM', 1, 89.93, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10713, 'SAVEA', 1, '10/22/1997 12:00:00 AM', '11/19/1997 12:00:00 AM', '10/24/1997 12:00:00 AM', 1, 167.05, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10714, 'SAVEA', 5, '10/22/1997 12:00:00 AM', '11/19/1997 12:00:00 AM', '10/27/1997 12:00:00 AM', 3, 24.49, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10715, 'BONAP', 3, '10/23/1997 12:00:00 AM', '11/6/1997 12:00:00 AM', '10/29/1997 12:00:00 AM', 1, 63.2, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10716, 'RANCH', 4, '10/24/1997 12:00:00 AM', '11/21/1997 12:00:00 AM', '10/27/1997 12:00:00 AM', 2, 22.57, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10717, 'FRANK', 1, '10/24/1997 12:00:00 AM', '11/21/1997 12:00:00 AM', '10/29/1997 12:00:00 AM', 2, 59.25, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10718, 'KOENE', 1, '10/27/1997 12:00:00 AM', '11/24/1997 12:00:00 AM', '10/29/1997 12:00:00 AM', 3, 170.88, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10719, 'LETSS', 8, '10/27/1997 12:00:00 AM', '11/24/1997 12:00:00 AM', '11/5/1997 12:00:00 AM', 2, 51.44, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA');
INSERT INTO Orders VALUES (10720, 'QUEDE', 8, '10/28/1997 12:00:00 AM', '11/11/1997 12:00:00 AM', '11/5/1997 12:00:00 AM', 2, 9.53, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders VALUES (10721, 'QUICK', 5, '10/29/1997 12:00:00 AM', '11/26/1997 12:00:00 AM', '10/31/1997 12:00:00 AM', 3, 48.92, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10722, 'SAVEA', 8, '10/29/1997 12:00:00 AM', '12/10/1997 12:00:00 AM', '11/4/1997 12:00:00 AM', 1, 74.58, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10723, 'WHITC', 3, '10/30/1997 12:00:00 AM', '11/27/1997 12:00:00 AM', '11/25/1997 12:00:00 AM', 1, 21.72, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10724, 'MEREP', 8, '10/30/1997 12:00:00 AM', '12/11/1997 12:00:00 AM', '11/5/1997 12:00:00 AM', 2, 57.75, 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada');
INSERT INTO Orders VALUES (10725, 'FAMIA', 4, '10/31/1997 12:00:00 AM', '11/28/1997 12:00:00 AM', '11/5/1997 12:00:00 AM', 3, 10.83, 'Familia Arquibaldo', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brazil');
INSERT INTO Orders VALUES (10726, 'EASTC', 4, '11/3/1997 12:00:00 AM', '11/17/1997 12:00:00 AM', '12/5/1997 12:00:00 AM', 1, 16.56, 'Eastern Connection', '35 King George', 'London', null, 'WX3 6FW', 'UK');
INSERT INTO Orders VALUES (10727, 'REGGC', 2, '11/3/1997 12:00:00 AM', '12/1/1997 12:00:00 AM', '12/5/1997 12:00:00 AM', 1, 89.9, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10728, 'QUEEN', 4, '11/4/1997 12:00:00 AM', '12/2/1997 12:00:00 AM', '11/11/1997 12:00:00 AM', 2, 58.33, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10729, 'LINOD', 8, '11/4/1997 12:00:00 AM', '12/16/1997 12:00:00 AM', '11/14/1997 12:00:00 AM', 3, 141.06, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10730, 'BONAP', 5, '11/5/1997 12:00:00 AM', '12/3/1997 12:00:00 AM', '11/14/1997 12:00:00 AM', 1, 20.12, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10731, 'CHOPS', 7, '11/6/1997 12:00:00 AM', '12/4/1997 12:00:00 AM', '11/14/1997 12:00:00 AM', 1, 96.65, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', null, '3012', 'Switzerland');
INSERT INTO Orders VALUES (10732, 'BONAP', 3, '11/6/1997 12:00:00 AM', '12/4/1997 12:00:00 AM', '11/7/1997 12:00:00 AM', 1, 16.97, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10733, 'BERGS', 1, '11/7/1997 12:00:00 AM', '12/5/1997 12:00:00 AM', '11/10/1997 12:00:00 AM', 3, 110.11, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10734, 'GOURL', 2, '11/7/1997 12:00:00 AM', '12/5/1997 12:00:00 AM', '11/12/1997 12:00:00 AM', 3, 1.63, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders VALUES (10735, 'LETSS', 6, '11/10/1997 12:00:00 AM', '12/8/1997 12:00:00 AM', '11/21/1997 12:00:00 AM', 2, 45.97, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA');
INSERT INTO Orders VALUES (10736, 'HUNGO', 9, '11/11/1997 12:00:00 AM', '12/9/1997 12:00:00 AM', '11/21/1997 12:00:00 AM', 2, 44.1, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10737, 'VINET', 2, '11/11/1997 12:00:00 AM', '12/9/1997 12:00:00 AM', '11/18/1997 12:00:00 AM', 2, 7.79, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', null, '51100', 'France');
INSERT INTO Orders VALUES (10738, 'SPECD', 2, '11/12/1997 12:00:00 AM', '12/10/1997 12:00:00 AM', '11/18/1997 12:00:00 AM', 1, 2.91, 'Spécialités du monde', '25, rue Lauriston', 'Paris', null, '75016', 'France');
INSERT INTO Orders VALUES (10739, 'VINET', 3, '11/12/1997 12:00:00 AM', '12/10/1997 12:00:00 AM', '11/17/1997 12:00:00 AM', 3, 11.08, 'Vins et alcools Chevalier', '59 rue de l''Abbaye', 'Reims', null, '51100', 'France');
INSERT INTO Orders VALUES (10740, 'WHITC', 4, '11/13/1997 12:00:00 AM', '12/11/1997 12:00:00 AM', '11/25/1997 12:00:00 AM', 2, 81.88, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10741, 'AROUT', 4, '11/14/1997 12:00:00 AM', '11/28/1997 12:00:00 AM', '11/18/1997 12:00:00 AM', 3, 10.96, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10742, 'BOTTM', 3, '11/14/1997 12:00:00 AM', '12/12/1997 12:00:00 AM', '11/18/1997 12:00:00 AM', 3, 243.73, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10743, 'AROUT', 1, '11/17/1997 12:00:00 AM', '12/15/1997 12:00:00 AM', '11/21/1997 12:00:00 AM', 2, 23.72, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10744, 'VAFFE', 6, '11/17/1997 12:00:00 AM', '12/15/1997 12:00:00 AM', '11/24/1997 12:00:00 AM', 1, 69.19, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10745, 'QUICK', 9, '11/18/1997 12:00:00 AM', '12/16/1997 12:00:00 AM', '11/27/1997 12:00:00 AM', 1, 3.52, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10746, 'CHOPS', 1, '11/19/1997 12:00:00 AM', '12/17/1997 12:00:00 AM', '11/21/1997 12:00:00 AM', 3, 31.43, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', null, '3012', 'Switzerland');
INSERT INTO Orders VALUES (10747, 'PICCO', 6, '11/19/1997 12:00:00 AM', '12/17/1997 12:00:00 AM', '11/26/1997 12:00:00 AM', 1, 117.33, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (10748, 'SAVEA', 3, '11/20/1997 12:00:00 AM', '12/18/1997 12:00:00 AM', '11/28/1997 12:00:00 AM', 1, 232.55, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10749, 'ISLAT', 4, '11/20/1997 12:00:00 AM', '12/18/1997 12:00:00 AM', '12/19/1997 12:00:00 AM', 2, 61.53, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10750, 'WARTH', 9, '11/21/1997 12:00:00 AM', '12/19/1997 12:00:00 AM', '11/24/1997 12:00:00 AM', 1, 79.3, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10751, 'RICSU', 3, '11/24/1997 12:00:00 AM', '12/22/1997 12:00:00 AM', '12/3/1997 12:00:00 AM', 3, 130.79, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (10752, 'NORTS', 2, '11/24/1997 12:00:00 AM', '12/22/1997 12:00:00 AM', '11/28/1997 12:00:00 AM', 3, 1.39, 'North/South', 'South House 300 Queensbridge', 'London', null, 'SW7 1RZ', 'UK');
INSERT INTO Orders VALUES (10753, 'FRANS', 3, '11/25/1997 12:00:00 AM', '12/23/1997 12:00:00 AM', '11/27/1997 12:00:00 AM', 1, 7.7, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', null, '10100', 'Italy');
INSERT INTO Orders VALUES (10754, 'MAGAA', 6, '11/25/1997 12:00:00 AM', '12/23/1997 12:00:00 AM', '11/27/1997 12:00:00 AM', 3, 2.38, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10755, 'BONAP', 4, '11/26/1997 12:00:00 AM', '12/24/1997 12:00:00 AM', '11/28/1997 12:00:00 AM', 2, 16.71, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10756, 'SPLIR', 8, '11/27/1997 12:00:00 AM', '12/25/1997 12:00:00 AM', '12/2/1997 12:00:00 AM', 2, 73.21, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders VALUES (10757, 'SAVEA', 6, '11/27/1997 12:00:00 AM', '12/25/1997 12:00:00 AM', '12/15/1997 12:00:00 AM', 1, 8.19, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10758, 'RICSU', 3, '11/28/1997 12:00:00 AM', '12/26/1997 12:00:00 AM', '12/4/1997 12:00:00 AM', 3, 138.17, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (10759, 'ANATR', 3, '11/28/1997 12:00:00 AM', '12/26/1997 12:00:00 AM', '12/12/1997 12:00:00 AM', 3, 11.99, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', null, '05021', 'Mexico');
INSERT INTO Orders VALUES (10760, 'MAISD', 4, '12/1/1997 12:00:00 AM', '12/29/1997 12:00:00 AM', '12/10/1997 12:00:00 AM', 1, 155.64, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', null, 'B-1180', 'Belgium');
INSERT INTO Orders VALUES (10761, 'RATTC', 5, '12/2/1997 12:00:00 AM', '12/30/1997 12:00:00 AM', '12/8/1997 12:00:00 AM', 2, 18.66, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10762, 'FOLKO', 3, '12/2/1997 12:00:00 AM', '12/30/1997 12:00:00 AM', '12/9/1997 12:00:00 AM', 1, 328.74, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10763, 'FOLIG', 3, '12/3/1997 12:00:00 AM', '12/31/1997 12:00:00 AM', '12/8/1997 12:00:00 AM', 3, 37.35, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', null, '59000', 'France');
INSERT INTO Orders VALUES (10764, 'ERNSH', 6, '12/3/1997 12:00:00 AM', '12/31/1997 12:00:00 AM', '12/8/1997 12:00:00 AM', 3, 145.45, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10765, 'QUICK', 3, '12/4/1997 12:00:00 AM', '1/1/1998 12:00:00 AM', '12/9/1997 12:00:00 AM', 3, 42.74, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10766, 'OTTIK', 4, '12/5/1997 12:00:00 AM', '1/2/1998 12:00:00 AM', '12/9/1997 12:00:00 AM', 1, 157.55, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (10767, 'SUPRD', 4, '12/5/1997 12:00:00 AM', '1/2/1998 12:00:00 AM', '12/15/1997 12:00:00 AM', 3, 1.59, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10768, 'AROUT', 3, '12/8/1997 12:00:00 AM', '1/5/1998 12:00:00 AM', '12/15/1997 12:00:00 AM', 2, 146.32, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10769, 'VAFFE', 3, '12/8/1997 12:00:00 AM', '1/5/1998 12:00:00 AM', '12/12/1997 12:00:00 AM', 1, 65.06, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10770, 'HANAR', 8, '12/9/1997 12:00:00 AM', '1/6/1998 12:00:00 AM', '12/17/1997 12:00:00 AM', 3, 5.32, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10771, 'ERNSH', 9, '12/10/1997 12:00:00 AM', '1/7/1998 12:00:00 AM', '1/2/1998 12:00:00 AM', 2, 11.19, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10772, 'LEHMS', 3, '12/10/1997 12:00:00 AM', '1/7/1998 12:00:00 AM', '12/19/1997 12:00:00 AM', 2, 91.28, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10773, 'ERNSH', 1, '12/11/1997 12:00:00 AM', '1/8/1998 12:00:00 AM', '12/16/1997 12:00:00 AM', 3, 96.43, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10774, 'FOLKO', 4, '12/11/1997 12:00:00 AM', '12/25/1997 12:00:00 AM', '12/12/1997 12:00:00 AM', 1, 48.2, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10775, 'THECR', 7, '12/12/1997 12:00:00 AM', '1/9/1998 12:00:00 AM', '12/26/1997 12:00:00 AM', 1, 20.25, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA');
INSERT INTO Orders VALUES (10776, 'ERNSH', 1, '12/15/1997 12:00:00 AM', '1/12/1998 12:00:00 AM', '12/18/1997 12:00:00 AM', 3, 351.53, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10777, 'GOURL', 7, '12/15/1997 12:00:00 AM', '12/29/1997 12:00:00 AM', '1/21/1998 12:00:00 AM', 2, 3.01, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders VALUES (10778, 'BERGS', 3, '12/16/1997 12:00:00 AM', '1/13/1998 12:00:00 AM', '12/24/1997 12:00:00 AM', 1, 6.79, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10779, 'MORGK', 3, '12/16/1997 12:00:00 AM', '1/13/1998 12:00:00 AM', '1/14/1998 12:00:00 AM', 2, 58.13, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', null, '04179', 'Germany');
INSERT INTO Orders VALUES (10780, 'LILAS', 2, '12/16/1997 12:00:00 AM', '12/30/1997 12:00:00 AM', '12/25/1997 12:00:00 AM', 1, 42.13, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10781, 'WARTH', 2, '12/17/1997 12:00:00 AM', '1/14/1998 12:00:00 AM', '12/19/1997 12:00:00 AM', 3, 73.16, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (10782, 'CACTU', 9, '12/17/1997 12:00:00 AM', '1/14/1998 12:00:00 AM', '12/22/1997 12:00:00 AM', 3, 1.1, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10783, 'HANAR', 4, '12/18/1997 12:00:00 AM', '1/15/1998 12:00:00 AM', '12/19/1997 12:00:00 AM', 2, 124.98, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10784, 'MAGAA', 4, '12/18/1997 12:00:00 AM', '1/15/1998 12:00:00 AM', '12/22/1997 12:00:00 AM', 3, 70.09, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10785, 'GROSR', 1, '12/18/1997 12:00:00 AM', '1/15/1998 12:00:00 AM', '12/24/1997 12:00:00 AM', 3, 1.51, 'GROSELLA-Restaurante', '5ª Ave. Los Palos Grande', 'Caracas', 'DF', '1081', 'Venezuela');
INSERT INTO Orders VALUES (10786, 'QUEEN', 8, '12/19/1997 12:00:00 AM', '1/16/1998 12:00:00 AM', '12/23/1997 12:00:00 AM', 1, 110.87, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10787, 'LAMAI', 2, '12/19/1997 12:00:00 AM', '1/2/1998 12:00:00 AM', '12/26/1997 12:00:00 AM', 1, 249.93, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10788, 'QUICK', 1, '12/22/1997 12:00:00 AM', '1/19/1998 12:00:00 AM', '1/19/1998 12:00:00 AM', 2, 42.7, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10789, 'FOLIG', 1, '12/22/1997 12:00:00 AM', '1/19/1998 12:00:00 AM', '12/31/1997 12:00:00 AM', 2, 100.6, 'Folies gourmandes', '184, chaussée de Tournai', 'Lille', null, '59000', 'France');
INSERT INTO Orders VALUES (10790, 'GOURL', 6, '12/22/1997 12:00:00 AM', '1/19/1998 12:00:00 AM', '12/26/1997 12:00:00 AM', 1, 28.23, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders VALUES (10791, 'FRANK', 6, '12/23/1997 12:00:00 AM', '1/20/1998 12:00:00 AM', '1/1/1998 12:00:00 AM', 2, 16.85, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10792, 'WOLZA', 1, '12/23/1997 12:00:00 AM', '1/20/1998 12:00:00 AM', '12/31/1997 12:00:00 AM', 3, 23.79, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', null, '01-012', 'Poland');
INSERT INTO Orders VALUES (10793, 'AROUT', 3, '12/24/1997 12:00:00 AM', '1/21/1998 12:00:00 AM', '1/8/1998 12:00:00 AM', 3, 4.52, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10794, 'QUEDE', 6, '12/24/1997 12:00:00 AM', '1/21/1998 12:00:00 AM', '1/2/1998 12:00:00 AM', 1, 21.49, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders VALUES (10795, 'ERNSH', 8, '12/24/1997 12:00:00 AM', '1/21/1998 12:00:00 AM', '1/20/1998 12:00:00 AM', 2, 126.66, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10796, 'HILAA', 3, '12/25/1997 12:00:00 AM', '1/22/1998 12:00:00 AM', '1/14/1998 12:00:00 AM', 1, 26.52, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10797, 'DRACD', 7, '12/25/1997 12:00:00 AM', '1/22/1998 12:00:00 AM', '1/5/1998 12:00:00 AM', 2, 33.35, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', null, '52066', 'Germany');
INSERT INTO Orders VALUES (10798, 'ISLAT', 2, '12/26/1997 12:00:00 AM', '1/23/1998 12:00:00 AM', '1/5/1998 12:00:00 AM', 1, 2.33, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10799, 'KOENE', 9, '12/26/1997 12:00:00 AM', '2/6/1998 12:00:00 AM', '1/5/1998 12:00:00 AM', 3, 30.76, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10800, 'SEVES', 1, '12/26/1997 12:00:00 AM', '1/23/1998 12:00:00 AM', '1/5/1998 12:00:00 AM', 3, 137.44, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK');
INSERT INTO Orders VALUES (10801, 'BOLID', 4, '12/29/1997 12:00:00 AM', '1/26/1998 12:00:00 AM', '12/31/1997 12:00:00 AM', 2, 97.09, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', null, '28023', 'Spain');
INSERT INTO Orders VALUES (10802, 'SIMOB', 4, '12/29/1997 12:00:00 AM', '1/26/1998 12:00:00 AM', '1/2/1998 12:00:00 AM', 2, 257.26, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', null, '1734', 'Denmark');
INSERT INTO Orders VALUES (10803, 'WELLI', 4, '12/30/1997 12:00:00 AM', '1/27/1998 12:00:00 AM', '1/6/1998 12:00:00 AM', 1, 55.23, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders VALUES (10804, 'SEVES', 6, '12/30/1997 12:00:00 AM', '1/27/1998 12:00:00 AM', '1/7/1998 12:00:00 AM', 2, 27.33, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK');
INSERT INTO Orders VALUES (10805, 'THEBI', 2, '12/30/1997 12:00:00 AM', '1/27/1998 12:00:00 AM', '1/9/1998 12:00:00 AM', 3, 237.34, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA');
INSERT INTO Orders VALUES (10806, 'VICTE', 3, '12/31/1997 12:00:00 AM', '1/28/1998 12:00:00 AM', '1/5/1998 12:00:00 AM', 2, 22.11, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10807, 'FRANS', 4, '12/31/1997 12:00:00 AM', '1/28/1998 12:00:00 AM', '1/30/1998 12:00:00 AM', 1, 1.36, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', null, '10100', 'Italy');
INSERT INTO Orders VALUES (10808, 'OLDWO', 2, '1/1/1998 12:00:00 AM', '1/29/1998 12:00:00 AM', '1/9/1998 12:00:00 AM', 3, 45.53, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (10809, 'WELLI', 7, '1/1/1998 12:00:00 AM', '1/29/1998 12:00:00 AM', '1/7/1998 12:00:00 AM', 1, 4.87, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders VALUES (10810, 'LAUGB', 2, '1/1/1998 12:00:00 AM', '1/29/1998 12:00:00 AM', '1/7/1998 12:00:00 AM', 3, 4.33, 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canada');
INSERT INTO Orders VALUES (10811, 'LINOD', 8, '1/2/1998 12:00:00 AM', '1/30/1998 12:00:00 AM', '1/8/1998 12:00:00 AM', 1, 31.22, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10812, 'REGGC', 5, '1/2/1998 12:00:00 AM', '1/30/1998 12:00:00 AM', '1/12/1998 12:00:00 AM', 1, 59.78, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10813, 'RICAR', 1, '1/5/1998 12:00:00 AM', '2/2/1998 12:00:00 AM', '1/9/1998 12:00:00 AM', 1, 47.38, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10814, 'VICTE', 3, '1/5/1998 12:00:00 AM', '2/2/1998 12:00:00 AM', '1/14/1998 12:00:00 AM', 3, 130.94, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10815, 'SAVEA', 2, '1/5/1998 12:00:00 AM', '2/2/1998 12:00:00 AM', '1/14/1998 12:00:00 AM', 3, 14.62, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10816, 'GREAL', 4, '1/6/1998 12:00:00 AM', '2/3/1998 12:00:00 AM', '2/4/1998 12:00:00 AM', 2, 719.78, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (10817, 'KOENE', 3, '1/6/1998 12:00:00 AM', '1/20/1998 12:00:00 AM', '1/13/1998 12:00:00 AM', 2, 306.07, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10818, 'MAGAA', 7, '1/7/1998 12:00:00 AM', '2/4/1998 12:00:00 AM', '1/12/1998 12:00:00 AM', 3, 65.48, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10819, 'CACTU', 2, '1/7/1998 12:00:00 AM', '2/4/1998 12:00:00 AM', '1/16/1998 12:00:00 AM', 3, 19.76, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10820, 'RATTC', 3, '1/7/1998 12:00:00 AM', '2/4/1998 12:00:00 AM', '1/13/1998 12:00:00 AM', 2, 37.52, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10821, 'SPLIR', 1, '1/8/1998 12:00:00 AM', '2/5/1998 12:00:00 AM', '1/15/1998 12:00:00 AM', 1, 36.68, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders VALUES (10822, 'TRAIH', 6, '1/8/1998 12:00:00 AM', '2/5/1998 12:00:00 AM', '1/16/1998 12:00:00 AM', 3, 7.0, 'Trail''s Head Gourmet Provisioners', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'USA');
INSERT INTO Orders VALUES (10823, 'LILAS', 5, '1/9/1998 12:00:00 AM', '2/6/1998 12:00:00 AM', '1/13/1998 12:00:00 AM', 2, 163.97, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10824, 'FOLKO', 8, '1/9/1998 12:00:00 AM', '2/6/1998 12:00:00 AM', '1/30/1998 12:00:00 AM', 1, 1.23, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10825, 'DRACD', 1, '1/9/1998 12:00:00 AM', '2/6/1998 12:00:00 AM', '1/14/1998 12:00:00 AM', 1, 79.25, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', null, '52066', 'Germany');
INSERT INTO Orders VALUES (10826, 'BLONP', 6, '1/12/1998 12:00:00 AM', '2/9/1998 12:00:00 AM', '2/6/1998 12:00:00 AM', 1, 7.09, 'Blondel père et fils', '24, place Kléber', 'Strasbourg', null, '67000', 'France');
INSERT INTO Orders VALUES (10827, 'BONAP', 1, '1/12/1998 12:00:00 AM', '1/26/1998 12:00:00 AM', '2/6/1998 12:00:00 AM', 2, 63.54, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10828, 'RANCH', 9, '1/13/1998 12:00:00 AM', '1/27/1998 12:00:00 AM', '2/4/1998 12:00:00 AM', 1, 90.85, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10829, 'ISLAT', 9, '1/13/1998 12:00:00 AM', '2/10/1998 12:00:00 AM', '1/23/1998 12:00:00 AM', 1, 154.72, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10830, 'TRADH', 4, '1/13/1998 12:00:00 AM', '2/24/1998 12:00:00 AM', '1/21/1998 12:00:00 AM', 2, 81.83, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders VALUES (10831, 'SANTG', 3, '1/14/1998 12:00:00 AM', '2/11/1998 12:00:00 AM', '1/23/1998 12:00:00 AM', 2, 72.19, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', null, '4110', 'Norway');
INSERT INTO Orders VALUES (10832, 'LAMAI', 2, '1/14/1998 12:00:00 AM', '2/11/1998 12:00:00 AM', '1/19/1998 12:00:00 AM', 2, 43.26, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10833, 'OTTIK', 6, '1/15/1998 12:00:00 AM', '2/12/1998 12:00:00 AM', '1/23/1998 12:00:00 AM', 2, 71.49, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (10834, 'TRADH', 1, '1/15/1998 12:00:00 AM', '2/12/1998 12:00:00 AM', '1/19/1998 12:00:00 AM', 3, 29.78, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders VALUES (10835, 'ALFKI', 1, '1/15/1998 12:00:00 AM', '2/12/1998 12:00:00 AM', '1/21/1998 12:00:00 AM', 3, 69.53, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', null, '12209', 'Germany');
INSERT INTO Orders VALUES (10836, 'ERNSH', 7, '1/16/1998 12:00:00 AM', '2/13/1998 12:00:00 AM', '1/21/1998 12:00:00 AM', 1, 411.88, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10837, 'BERGS', 9, '1/16/1998 12:00:00 AM', '2/13/1998 12:00:00 AM', '1/23/1998 12:00:00 AM', 3, 13.32, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10838, 'LINOD', 3, '1/19/1998 12:00:00 AM', '2/16/1998 12:00:00 AM', '1/23/1998 12:00:00 AM', 3, 59.28, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10839, 'TRADH', 3, '1/19/1998 12:00:00 AM', '2/16/1998 12:00:00 AM', '1/22/1998 12:00:00 AM', 3, 35.43, 'Tradiçao Hipermercados', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brazil');
INSERT INTO Orders VALUES (10840, 'LINOD', 4, '1/19/1998 12:00:00 AM', '3/2/1998 12:00:00 AM', '2/16/1998 12:00:00 AM', 2, 2.71, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10841, 'SUPRD', 5, '1/20/1998 12:00:00 AM', '2/17/1998 12:00:00 AM', '1/29/1998 12:00:00 AM', 2, 424.3, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10842, 'TORTU', 1, '1/20/1998 12:00:00 AM', '2/17/1998 12:00:00 AM', '1/29/1998 12:00:00 AM', 3, 54.42, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10843, 'VICTE', 4, '1/21/1998 12:00:00 AM', '2/18/1998 12:00:00 AM', '1/26/1998 12:00:00 AM', 2, 9.26, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10844, 'PICCO', 8, '1/21/1998 12:00:00 AM', '2/18/1998 12:00:00 AM', '1/26/1998 12:00:00 AM', 2, 25.22, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (10845, 'QUICK', 8, '1/21/1998 12:00:00 AM', '2/4/1998 12:00:00 AM', '1/30/1998 12:00:00 AM', 1, 212.98, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10846, 'SUPRD', 2, '1/22/1998 12:00:00 AM', '3/5/1998 12:00:00 AM', '1/23/1998 12:00:00 AM', 3, 56.46, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10847, 'SAVEA', 4, '1/22/1998 12:00:00 AM', '2/5/1998 12:00:00 AM', '2/10/1998 12:00:00 AM', 3, 487.57, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10848, 'CONSH', 7, '1/23/1998 12:00:00 AM', '2/20/1998 12:00:00 AM', '1/29/1998 12:00:00 AM', 2, 38.24, 'Consolidated Holdings', 'Berkeley Gardens 12  Brewery', 'London', null, 'WX1 6LT', 'UK');
INSERT INTO Orders VALUES (10849, 'KOENE', 9, '1/23/1998 12:00:00 AM', '2/20/1998 12:00:00 AM', '1/30/1998 12:00:00 AM', 2, 0.56, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10850, 'VICTE', 1, '1/23/1998 12:00:00 AM', '3/6/1998 12:00:00 AM', '1/30/1998 12:00:00 AM', 1, 49.19, 'Victuailles en stock', '2, rue du Commerce', 'Lyon', null, '69004', 'France');
INSERT INTO Orders VALUES (10851, 'RICAR', 5, '1/26/1998 12:00:00 AM', '2/23/1998 12:00:00 AM', '2/2/1998 12:00:00 AM', 1, 160.55, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10852, 'RATTC', 8, '1/26/1998 12:00:00 AM', '2/9/1998 12:00:00 AM', '1/30/1998 12:00:00 AM', 1, 174.05, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10853, 'BLAUS', 9, '1/27/1998 12:00:00 AM', '2/24/1998 12:00:00 AM', '2/3/1998 12:00:00 AM', 2, 53.83, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', null, '68306', 'Germany');
INSERT INTO Orders VALUES (10854, 'ERNSH', 3, '1/27/1998 12:00:00 AM', '2/24/1998 12:00:00 AM', '2/5/1998 12:00:00 AM', 2, 100.22, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10855, 'OLDWO', 3, '1/27/1998 12:00:00 AM', '2/24/1998 12:00:00 AM', '2/4/1998 12:00:00 AM', 1, 170.97, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (10856, 'ANTON', 3, '1/28/1998 12:00:00 AM', '2/25/1998 12:00:00 AM', '2/10/1998 12:00:00 AM', 2, 58.43, 'Antonio Moreno Taquería', 'Mataderos  2312', 'México D.F.', null, '05023', 'Mexico');
INSERT INTO Orders VALUES (10857, 'BERGS', 8, '1/28/1998 12:00:00 AM', '2/25/1998 12:00:00 AM', '2/6/1998 12:00:00 AM', 2, 188.85, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10858, 'LACOR', 2, '1/29/1998 12:00:00 AM', '2/26/1998 12:00:00 AM', '2/3/1998 12:00:00 AM', 1, 52.51, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', null, '78000', 'France');
INSERT INTO Orders VALUES (10859, 'FRANK', 1, '1/29/1998 12:00:00 AM', '2/26/1998 12:00:00 AM', '2/2/1998 12:00:00 AM', 2, 76.1, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10860, 'FRANR', 3, '1/29/1998 12:00:00 AM', '2/26/1998 12:00:00 AM', '2/4/1998 12:00:00 AM', 3, 19.26, 'France restauration', '54, rue Royale', 'Nantes', null, '44000', 'France');
INSERT INTO Orders VALUES (10861, 'WHITC', 4, '1/30/1998 12:00:00 AM', '2/27/1998 12:00:00 AM', '2/17/1998 12:00:00 AM', 2, 14.93, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10862, 'LEHMS', 8, '1/30/1998 12:00:00 AM', '3/13/1998 12:00:00 AM', '2/2/1998 12:00:00 AM', 2, 53.23, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10863, 'HILAA', 4, '2/2/1998 12:00:00 AM', '3/2/1998 12:00:00 AM', '2/17/1998 12:00:00 AM', 2, 30.26, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10864, 'AROUT', 4, '2/2/1998 12:00:00 AM', '3/2/1998 12:00:00 AM', '2/9/1998 12:00:00 AM', 2, 3.04, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10865, 'QUICK', 2, '2/2/1998 12:00:00 AM', '2/16/1998 12:00:00 AM', '2/12/1998 12:00:00 AM', 1, 348.14, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10866, 'BERGS', 5, '2/3/1998 12:00:00 AM', '3/3/1998 12:00:00 AM', '2/12/1998 12:00:00 AM', 1, 109.11, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10867, 'LONEP', 6, '2/3/1998 12:00:00 AM', '3/17/1998 12:00:00 AM', '2/11/1998 12:00:00 AM', 1, 1.93, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders VALUES (10868, 'QUEEN', 7, '2/4/1998 12:00:00 AM', '3/4/1998 12:00:00 AM', '2/23/1998 12:00:00 AM', 2, 191.27, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10869, 'SEVES', 5, '2/4/1998 12:00:00 AM', '3/4/1998 12:00:00 AM', '2/9/1998 12:00:00 AM', 1, 143.28, 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', null, 'OX15 4NB', 'UK');
INSERT INTO Orders VALUES (10870, 'WOLZA', 5, '2/4/1998 12:00:00 AM', '3/4/1998 12:00:00 AM', '2/13/1998 12:00:00 AM', 3, 12.04, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', null, '01-012', 'Poland');
INSERT INTO Orders VALUES (10871, 'BONAP', 9, '2/5/1998 12:00:00 AM', '3/5/1998 12:00:00 AM', '2/10/1998 12:00:00 AM', 2, 112.27, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10872, 'GODOS', 5, '2/5/1998 12:00:00 AM', '3/5/1998 12:00:00 AM', '2/9/1998 12:00:00 AM', 2, 175.32, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (10873, 'WILMK', 4, '2/6/1998 12:00:00 AM', '3/6/1998 12:00:00 AM', '2/9/1998 12:00:00 AM', 1, 0.82, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', null, '21240', 'Finland');
INSERT INTO Orders VALUES (10874, 'GODOS', 5, '2/6/1998 12:00:00 AM', '3/6/1998 12:00:00 AM', '2/11/1998 12:00:00 AM', 2, 19.58, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (10875, 'BERGS', 4, '2/6/1998 12:00:00 AM', '3/6/1998 12:00:00 AM', '3/3/1998 12:00:00 AM', 2, 32.37, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10876, 'BONAP', 7, '2/9/1998 12:00:00 AM', '3/9/1998 12:00:00 AM', '2/12/1998 12:00:00 AM', 3, 60.42, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10877, 'RICAR', 1, '2/9/1998 12:00:00 AM', '3/9/1998 12:00:00 AM', '2/19/1998 12:00:00 AM', 1, 38.06, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (10878, 'QUICK', 4, '2/10/1998 12:00:00 AM', '3/10/1998 12:00:00 AM', '2/12/1998 12:00:00 AM', 1, 46.69, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10879, 'WILMK', 3, '2/10/1998 12:00:00 AM', '3/10/1998 12:00:00 AM', '2/12/1998 12:00:00 AM', 3, 8.5, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', null, '21240', 'Finland');
INSERT INTO Orders VALUES (10880, 'FOLKO', 7, '2/10/1998 12:00:00 AM', '3/24/1998 12:00:00 AM', '2/18/1998 12:00:00 AM', 1, 88.01, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10881, 'CACTU', 4, '2/11/1998 12:00:00 AM', '3/11/1998 12:00:00 AM', '2/18/1998 12:00:00 AM', 1, 2.84, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10882, 'SAVEA', 4, '2/11/1998 12:00:00 AM', '3/11/1998 12:00:00 AM', '2/20/1998 12:00:00 AM', 3, 23.1, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10883, 'LONEP', 8, '2/12/1998 12:00:00 AM', '3/12/1998 12:00:00 AM', '2/20/1998 12:00:00 AM', 3, 0.53, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders VALUES (10884, 'LETSS', 4, '2/12/1998 12:00:00 AM', '3/12/1998 12:00:00 AM', '2/13/1998 12:00:00 AM', 2, 90.97, 'Let''s Stop N Shop', '87 Polk St. Suite 5', 'San Francisco', 'CA', '94117', 'USA');
INSERT INTO Orders VALUES (10885, 'SUPRD', 6, '2/12/1998 12:00:00 AM', '3/12/1998 12:00:00 AM', '2/18/1998 12:00:00 AM', 3, 5.64, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10886, 'HANAR', 1, '2/13/1998 12:00:00 AM', '3/13/1998 12:00:00 AM', '3/2/1998 12:00:00 AM', 1, 4.99, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10887, 'GALED', 8, '2/13/1998 12:00:00 AM', '3/13/1998 12:00:00 AM', '2/16/1998 12:00:00 AM', 3, 1.25, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', null, '8022', 'Spain');
INSERT INTO Orders VALUES (10888, 'GODOS', 1, '2/16/1998 12:00:00 AM', '3/16/1998 12:00:00 AM', '2/23/1998 12:00:00 AM', 2, 51.87, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (10889, 'RATTC', 9, '2/16/1998 12:00:00 AM', '3/16/1998 12:00:00 AM', '2/23/1998 12:00:00 AM', 3, 280.61, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10890, 'DUMON', 7, '2/16/1998 12:00:00 AM', '3/16/1998 12:00:00 AM', '2/18/1998 12:00:00 AM', 1, 32.76, 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', null, '44000', 'France');
INSERT INTO Orders VALUES (10891, 'LEHMS', 7, '2/17/1998 12:00:00 AM', '3/17/1998 12:00:00 AM', '2/19/1998 12:00:00 AM', 2, 20.37, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10892, 'MAISD', 4, '2/17/1998 12:00:00 AM', '3/17/1998 12:00:00 AM', '2/19/1998 12:00:00 AM', 2, 120.27, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', null, 'B-1180', 'Belgium');
INSERT INTO Orders VALUES (10893, 'KOENE', 9, '2/18/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', '2/20/1998 12:00:00 AM', 2, 77.78, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (10894, 'SAVEA', 1, '2/18/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', '2/20/1998 12:00:00 AM', 1, 116.13, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10895, 'ERNSH', 3, '2/18/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', '2/23/1998 12:00:00 AM', 1, 162.75, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10896, 'MAISD', 7, '2/19/1998 12:00:00 AM', '3/19/1998 12:00:00 AM', '2/27/1998 12:00:00 AM', 3, 32.45, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', null, 'B-1180', 'Belgium');
INSERT INTO Orders VALUES (10897, 'HUNGO', 3, '2/19/1998 12:00:00 AM', '3/19/1998 12:00:00 AM', '2/25/1998 12:00:00 AM', 2, 603.54, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10898, 'OCEAN', 4, '2/20/1998 12:00:00 AM', '3/20/1998 12:00:00 AM', '3/6/1998 12:00:00 AM', 2, 1.27, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10899, 'LILAS', 5, '2/20/1998 12:00:00 AM', '3/20/1998 12:00:00 AM', '2/26/1998 12:00:00 AM', 3, 1.21, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10900, 'WELLI', 1, '2/20/1998 12:00:00 AM', '3/20/1998 12:00:00 AM', '3/4/1998 12:00:00 AM', 2, 1.66, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders VALUES (10901, 'HILAA', 4, '2/23/1998 12:00:00 AM', '3/23/1998 12:00:00 AM', '2/26/1998 12:00:00 AM', 1, 62.09, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10902, 'FOLKO', 1, '2/23/1998 12:00:00 AM', '3/23/1998 12:00:00 AM', '3/3/1998 12:00:00 AM', 1, 44.15, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10903, 'HANAR', 3, '2/24/1998 12:00:00 AM', '3/24/1998 12:00:00 AM', '3/4/1998 12:00:00 AM', 3, 36.71, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10904, 'WHITC', 3, '2/24/1998 12:00:00 AM', '3/24/1998 12:00:00 AM', '2/27/1998 12:00:00 AM', 3, 162.95, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (10905, 'WELLI', 9, '2/24/1998 12:00:00 AM', '3/24/1998 12:00:00 AM', '3/6/1998 12:00:00 AM', 2, 13.72, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders VALUES (10906, 'WOLZA', 4, '2/25/1998 12:00:00 AM', '3/11/1998 12:00:00 AM', '3/3/1998 12:00:00 AM', 3, 26.29, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', null, '01-012', 'Poland');
INSERT INTO Orders VALUES (10907, 'SPECD', 6, '2/25/1998 12:00:00 AM', '3/25/1998 12:00:00 AM', '2/27/1998 12:00:00 AM', 3, 9.19, 'Spécialités du monde', '25, rue Lauriston', 'Paris', null, '75016', 'France');
INSERT INTO Orders VALUES (10908, 'REGGC', 4, '2/26/1998 12:00:00 AM', '3/26/1998 12:00:00 AM', '3/6/1998 12:00:00 AM', 2, 32.96, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10909, 'SANTG', 1, '2/26/1998 12:00:00 AM', '3/26/1998 12:00:00 AM', '3/10/1998 12:00:00 AM', 2, 53.05, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', null, '4110', 'Norway');
INSERT INTO Orders VALUES (10910, 'WILMK', 1, '2/26/1998 12:00:00 AM', '3/26/1998 12:00:00 AM', '3/4/1998 12:00:00 AM', 3, 38.11, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', null, '21240', 'Finland');
INSERT INTO Orders VALUES (10911, 'GODOS', 3, '2/26/1998 12:00:00 AM', '3/26/1998 12:00:00 AM', '3/5/1998 12:00:00 AM', 1, 38.19, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (10912, 'HUNGO', 2, '2/26/1998 12:00:00 AM', '3/26/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', 2, 580.91, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10913, 'QUEEN', 4, '2/26/1998 12:00:00 AM', '3/26/1998 12:00:00 AM', '3/4/1998 12:00:00 AM', 1, 33.05, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10914, 'QUEEN', 6, '2/27/1998 12:00:00 AM', '3/27/1998 12:00:00 AM', '3/2/1998 12:00:00 AM', 1, 21.19, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10915, 'TORTU', 2, '2/27/1998 12:00:00 AM', '3/27/1998 12:00:00 AM', '3/2/1998 12:00:00 AM', 2, 3.51, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10916, 'RANCH', 1, '2/27/1998 12:00:00 AM', '3/27/1998 12:00:00 AM', '3/9/1998 12:00:00 AM', 2, 63.77, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10917, 'ROMEY', 4, '3/2/1998 12:00:00 AM', '3/30/1998 12:00:00 AM', '3/11/1998 12:00:00 AM', 2, 8.29, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', null, '28001', 'Spain');
INSERT INTO Orders VALUES (10918, 'BOTTM', 3, '3/2/1998 12:00:00 AM', '3/30/1998 12:00:00 AM', '3/11/1998 12:00:00 AM', 3, 48.83, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10919, 'LINOD', 2, '3/2/1998 12:00:00 AM', '3/30/1998 12:00:00 AM', '3/4/1998 12:00:00 AM', 2, 19.8, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10920, 'AROUT', 4, '3/3/1998 12:00:00 AM', '3/31/1998 12:00:00 AM', '3/9/1998 12:00:00 AM', 2, 29.61, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10921, 'VAFFE', 1, '3/3/1998 12:00:00 AM', '4/14/1998 12:00:00 AM', '3/9/1998 12:00:00 AM', 1, 176.48, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10922, 'HANAR', 5, '3/3/1998 12:00:00 AM', '3/31/1998 12:00:00 AM', '3/5/1998 12:00:00 AM', 3, 62.74, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10923, 'LAMAI', 7, '3/3/1998 12:00:00 AM', '4/14/1998 12:00:00 AM', '3/13/1998 12:00:00 AM', 3, 68.26, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (10924, 'BERGS', 3, '3/4/1998 12:00:00 AM', '4/1/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', 2, 151.52, 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', null, 'S-958 22', 'Sweden');
INSERT INTO Orders VALUES (10925, 'HANAR', 3, '3/4/1998 12:00:00 AM', '4/1/1998 12:00:00 AM', '3/13/1998 12:00:00 AM', 1, 2.27, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10926, 'ANATR', 4, '3/4/1998 12:00:00 AM', '4/1/1998 12:00:00 AM', '3/11/1998 12:00:00 AM', 3, 39.92, 'Ana Trujillo Emparedados y helados', 'Avda. de la Constitución 2222', 'México D.F.', null, '05021', 'Mexico');
INSERT INTO Orders VALUES (10927, 'LACOR', 4, '3/5/1998 12:00:00 AM', '4/2/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', 1, 19.79, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', null, '78000', 'France');
INSERT INTO Orders VALUES (10928, 'GALED', 1, '3/5/1998 12:00:00 AM', '4/2/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', 1, 1.36, 'Galería del gastronómo', 'Rambla de Cataluña, 23', 'Barcelona', null, '8022', 'Spain');
INSERT INTO Orders VALUES (10929, 'FRANK', 6, '3/5/1998 12:00:00 AM', '4/2/1998 12:00:00 AM', '3/12/1998 12:00:00 AM', 1, 33.93, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (10930, 'SUPRD', 4, '3/6/1998 12:00:00 AM', '4/17/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', 3, 15.55, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (10931, 'RICSU', 4, '3/6/1998 12:00:00 AM', '3/20/1998 12:00:00 AM', '3/19/1998 12:00:00 AM', 2, 13.6, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (10932, 'BONAP', 8, '3/6/1998 12:00:00 AM', '4/3/1998 12:00:00 AM', '3/24/1998 12:00:00 AM', 1, 134.64, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10933, 'ISLAT', 6, '3/6/1998 12:00:00 AM', '4/3/1998 12:00:00 AM', '3/16/1998 12:00:00 AM', 3, 54.15, 'Island Trading', 'Garden House Crowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'UK');
INSERT INTO Orders VALUES (10934, 'LEHMS', 3, '3/9/1998 12:00:00 AM', '4/6/1998 12:00:00 AM', '3/12/1998 12:00:00 AM', 3, 32.01, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (10935, 'WELLI', 4, '3/9/1998 12:00:00 AM', '4/6/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', 3, 47.59, 'Wellington Importadora', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brazil');
INSERT INTO Orders VALUES (10936, 'GREAL', 3, '3/9/1998 12:00:00 AM', '4/6/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', 2, 33.68, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (10937, 'CACTU', 7, '3/10/1998 12:00:00 AM', '3/24/1998 12:00:00 AM', '3/13/1998 12:00:00 AM', 3, 31.51, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10938, 'QUICK', 3, '3/10/1998 12:00:00 AM', '4/7/1998 12:00:00 AM', '3/16/1998 12:00:00 AM', 2, 31.89, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10939, 'MAGAA', 2, '3/10/1998 12:00:00 AM', '4/7/1998 12:00:00 AM', '3/13/1998 12:00:00 AM', 2, 76.33, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10940, 'BONAP', 8, '3/11/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', '3/23/1998 12:00:00 AM', 3, 19.77, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (10941, 'SAVEA', 7, '3/11/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', '3/20/1998 12:00:00 AM', 2, 400.81, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10942, 'REGGC', 9, '3/11/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', 3, 17.95, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (10943, 'BSBEV', 4, '3/11/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', '3/19/1998 12:00:00 AM', 2, 2.17, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (10944, 'BOTTM', 6, '3/12/1998 12:00:00 AM', '3/26/1998 12:00:00 AM', '3/13/1998 12:00:00 AM', 3, 52.92, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10945, 'MORGK', 4, '3/12/1998 12:00:00 AM', '4/9/1998 12:00:00 AM', '3/18/1998 12:00:00 AM', 1, 10.22, 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', null, '04179', 'Germany');
INSERT INTO Orders VALUES (10946, 'VAFFE', 1, '3/12/1998 12:00:00 AM', '4/9/1998 12:00:00 AM', '3/19/1998 12:00:00 AM', 2, 27.2, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10947, 'BSBEV', 3, '3/13/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', '3/16/1998 12:00:00 AM', 2, 3.26, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (10948, 'GODOS', 3, '3/13/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', '3/19/1998 12:00:00 AM', 3, 23.39, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (10949, 'BOTTM', 2, '3/13/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', '3/17/1998 12:00:00 AM', 3, 74.44, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10950, 'MAGAA', 1, '3/16/1998 12:00:00 AM', '4/13/1998 12:00:00 AM', '3/23/1998 12:00:00 AM', 2, 2.5, 'Magazzini Alimentari Riuniti', 'Via Ludovico il Moro 22', 'Bergamo', null, '24100', 'Italy');
INSERT INTO Orders VALUES (10951, 'RICSU', 9, '3/16/1998 12:00:00 AM', '4/27/1998 12:00:00 AM', '4/7/1998 12:00:00 AM', 2, 30.85, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (10952, 'ALFKI', 1, '3/16/1998 12:00:00 AM', '4/27/1998 12:00:00 AM', '3/24/1998 12:00:00 AM', 1, 40.42, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', null, '12209', 'Germany');
INSERT INTO Orders VALUES (10953, 'AROUT', 9, '3/16/1998 12:00:00 AM', '3/30/1998 12:00:00 AM', '3/25/1998 12:00:00 AM', 2, 23.72, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (10954, 'LINOD', 5, '3/17/1998 12:00:00 AM', '4/28/1998 12:00:00 AM', '3/20/1998 12:00:00 AM', 1, 27.91, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (10955, 'FOLKO', 8, '3/17/1998 12:00:00 AM', '4/14/1998 12:00:00 AM', '3/20/1998 12:00:00 AM', 2, 3.26, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10956, 'BLAUS', 6, '3/17/1998 12:00:00 AM', '4/28/1998 12:00:00 AM', '3/20/1998 12:00:00 AM', 2, 44.65, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', null, '68306', 'Germany');
INSERT INTO Orders VALUES (10957, 'HILAA', 8, '3/18/1998 12:00:00 AM', '4/15/1998 12:00:00 AM', '3/27/1998 12:00:00 AM', 3, 105.36, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10958, 'OCEAN', 7, '3/18/1998 12:00:00 AM', '4/15/1998 12:00:00 AM', '3/27/1998 12:00:00 AM', 2, 49.56, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10959, 'GOURL', 6, '3/18/1998 12:00:00 AM', '4/29/1998 12:00:00 AM', '3/23/1998 12:00:00 AM', 2, 4.98, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders VALUES (10960, 'HILAA', 3, '3/19/1998 12:00:00 AM', '4/2/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', 1, 2.08, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10961, 'QUEEN', 8, '3/19/1998 12:00:00 AM', '4/16/1998 12:00:00 AM', '3/30/1998 12:00:00 AM', 1, 104.47, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (10962, 'QUICK', 8, '3/19/1998 12:00:00 AM', '4/16/1998 12:00:00 AM', '3/23/1998 12:00:00 AM', 2, 275.79, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10963, 'FURIB', 9, '3/19/1998 12:00:00 AM', '4/16/1998 12:00:00 AM', '3/26/1998 12:00:00 AM', 3, 2.7, 'Furia Bacalhau e Frutos do Mar', 'Jardim das rosas n. 32', 'Lisboa', null, '1675', 'Portugal');
INSERT INTO Orders VALUES (10964, 'SPECD', 3, '3/20/1998 12:00:00 AM', '4/17/1998 12:00:00 AM', '3/24/1998 12:00:00 AM', 2, 87.38, 'Spécialités du monde', '25, rue Lauriston', 'Paris', null, '75016', 'France');
INSERT INTO Orders VALUES (10965, 'OLDWO', 6, '3/20/1998 12:00:00 AM', '4/17/1998 12:00:00 AM', '3/30/1998 12:00:00 AM', 3, 144.38, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (10966, 'CHOPS', 4, '3/20/1998 12:00:00 AM', '4/17/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', 1, 27.19, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', null, '3012', 'Switzerland');
INSERT INTO Orders VALUES (10967, 'TOMSP', 2, '3/23/1998 12:00:00 AM', '4/20/1998 12:00:00 AM', '4/2/1998 12:00:00 AM', 2, 62.22, 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', null, '44087', 'Germany');
INSERT INTO Orders VALUES (10968, 'ERNSH', 1, '3/23/1998 12:00:00 AM', '4/20/1998 12:00:00 AM', '4/1/1998 12:00:00 AM', 3, 74.6, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10969, 'COMMI', 1, '3/23/1998 12:00:00 AM', '4/20/1998 12:00:00 AM', '3/30/1998 12:00:00 AM', 2, 0.21, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders VALUES (10970, 'BOLID', 9, '3/24/1998 12:00:00 AM', '4/7/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', 1, 16.16, 'Bólido Comidas preparadas', 'C/ Araquil, 67', 'Madrid', null, '28023', 'Spain');
INSERT INTO Orders VALUES (10971, 'FRANR', 2, '3/24/1998 12:00:00 AM', '4/21/1998 12:00:00 AM', '4/2/1998 12:00:00 AM', 2, 121.82, 'France restauration', '54, rue Royale', 'Nantes', null, '44000', 'France');
INSERT INTO Orders VALUES (10972, 'LACOR', 4, '3/24/1998 12:00:00 AM', '4/21/1998 12:00:00 AM', '3/26/1998 12:00:00 AM', 2, 0.02, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', null, '78000', 'France');
INSERT INTO Orders VALUES (10973, 'LACOR', 6, '3/24/1998 12:00:00 AM', '4/21/1998 12:00:00 AM', '3/27/1998 12:00:00 AM', 2, 15.17, 'La corne d''abondance', '67, avenue de l''Europe', 'Versailles', null, '78000', 'France');
INSERT INTO Orders VALUES (10974, 'SPLIR', 3, '3/25/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', '4/3/1998 12:00:00 AM', 3, 12.96, 'Split Rail Beer & Ale', 'P.O. Box 555', 'Lander', 'WY', '82520', 'USA');
INSERT INTO Orders VALUES (10975, 'BOTTM', 1, '3/25/1998 12:00:00 AM', '4/22/1998 12:00:00 AM', '3/27/1998 12:00:00 AM', 3, 32.27, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10976, 'HILAA', 1, '3/25/1998 12:00:00 AM', '5/6/1998 12:00:00 AM', '4/3/1998 12:00:00 AM', 1, 37.97, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (10977, 'FOLKO', 8, '3/26/1998 12:00:00 AM', '4/23/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', 3, 208.5, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10978, 'MAISD', 9, '3/26/1998 12:00:00 AM', '4/23/1998 12:00:00 AM', '4/23/1998 12:00:00 AM', 2, 32.82, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', null, 'B-1180', 'Belgium');
INSERT INTO Orders VALUES (10979, 'ERNSH', 8, '3/26/1998 12:00:00 AM', '4/23/1998 12:00:00 AM', '3/31/1998 12:00:00 AM', 2, 353.07, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10980, 'FOLKO', 4, '3/27/1998 12:00:00 AM', '5/8/1998 12:00:00 AM', '4/17/1998 12:00:00 AM', 1, 1.26, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10981, 'HANAR', 1, '3/27/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', '4/2/1998 12:00:00 AM', 2, 193.37, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (10982, 'BOTTM', 2, '3/27/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', 1, 14.01, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (10983, 'SAVEA', 2, '3/27/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', '4/6/1998 12:00:00 AM', 2, 657.54, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10984, 'SAVEA', 1, '3/30/1998 12:00:00 AM', '4/27/1998 12:00:00 AM', '4/3/1998 12:00:00 AM', 3, 211.22, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (10985, 'HUNGO', 2, '3/30/1998 12:00:00 AM', '4/27/1998 12:00:00 AM', '4/2/1998 12:00:00 AM', 1, 91.51, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (10986, 'OCEAN', 8, '3/30/1998 12:00:00 AM', '4/27/1998 12:00:00 AM', '4/21/1998 12:00:00 AM', 2, 217.86, 'Océano Atlántico Ltda.', 'Ing. Gustavo Moncada 8585 Piso 20-A', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (10987, 'EASTC', 8, '3/31/1998 12:00:00 AM', '4/28/1998 12:00:00 AM', '4/6/1998 12:00:00 AM', 1, 185.48, 'Eastern Connection', '35 King George', 'London', null, 'WX3 6FW', 'UK');
INSERT INTO Orders VALUES (10988, 'RATTC', 3, '3/31/1998 12:00:00 AM', '4/28/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', 2, 61.14, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (10989, 'QUEDE', 2, '3/31/1998 12:00:00 AM', '4/28/1998 12:00:00 AM', '4/2/1998 12:00:00 AM', 1, 34.76, 'Que Delícia', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brazil');
INSERT INTO Orders VALUES (10990, 'ERNSH', 2, '4/1/1998 12:00:00 AM', '5/13/1998 12:00:00 AM', '4/7/1998 12:00:00 AM', 3, 117.61, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (10991, 'QUICK', 1, '4/1/1998 12:00:00 AM', '4/29/1998 12:00:00 AM', '4/7/1998 12:00:00 AM', 1, 38.51, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10992, 'THEBI', 1, '4/1/1998 12:00:00 AM', '4/29/1998 12:00:00 AM', '4/3/1998 12:00:00 AM', 3, 4.27, 'The Big Cheese', '89 Jefferson Way Suite 2', 'Portland', 'OR', '97201', 'USA');
INSERT INTO Orders VALUES (10993, 'FOLKO', 7, '4/1/1998 12:00:00 AM', '4/29/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', 3, 8.81, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (10994, 'VAFFE', 2, '4/2/1998 12:00:00 AM', '4/16/1998 12:00:00 AM', '4/9/1998 12:00:00 AM', 3, 65.53, 'Vaffeljernet', 'Smagsloget 45', 'Århus', null, '8200', 'Denmark');
INSERT INTO Orders VALUES (10995, 'PERIC', 1, '4/2/1998 12:00:00 AM', '4/30/1998 12:00:00 AM', '4/6/1998 12:00:00 AM', 3, 46.0, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (10996, 'QUICK', 4, '4/2/1998 12:00:00 AM', '4/30/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', 2, 1.12, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (10997, 'LILAS', 8, '4/3/1998 12:00:00 AM', '5/15/1998 12:00:00 AM', '4/13/1998 12:00:00 AM', 2, 73.91, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (10998, 'WOLZA', 8, '4/3/1998 12:00:00 AM', '4/17/1998 12:00:00 AM', '4/17/1998 12:00:00 AM', 2, 20.31, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', null, '01-012', 'Poland');
INSERT INTO Orders VALUES (10999, 'OTTIK', 6, '4/3/1998 12:00:00 AM', '5/1/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', 2, 96.35, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (11000, 'RATTC', 2, '4/6/1998 12:00:00 AM', '5/4/1998 12:00:00 AM', '4/14/1998 12:00:00 AM', 3, 55.12, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Orders VALUES (11001, 'FOLKO', 2, '4/6/1998 12:00:00 AM', '5/4/1998 12:00:00 AM', '4/14/1998 12:00:00 AM', 2, 197.3, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (11002, 'SAVEA', 4, '4/6/1998 12:00:00 AM', '5/4/1998 12:00:00 AM', '4/16/1998 12:00:00 AM', 1, 141.16, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (11003, 'THECR', 3, '4/6/1998 12:00:00 AM', '5/4/1998 12:00:00 AM', '4/8/1998 12:00:00 AM', 3, 14.91, 'The Cracker Box', '55 Grizzly Peak Rd.', 'Butte', 'MT', '59801', 'USA');
INSERT INTO Orders VALUES (11004, 'MAISD', 3, '4/7/1998 12:00:00 AM', '5/5/1998 12:00:00 AM', '4/20/1998 12:00:00 AM', 1, 44.84, 'Maison Dewey', 'Rue Joseph-Bens 532', 'Bruxelles', null, 'B-1180', 'Belgium');
INSERT INTO Orders VALUES (11005, 'WILMK', 2, '4/7/1998 12:00:00 AM', '5/5/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', 1, 0.75, 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', null, '21240', 'Finland');
INSERT INTO Orders VALUES (11006, 'GREAL', 3, '4/7/1998 12:00:00 AM', '5/5/1998 12:00:00 AM', '4/15/1998 12:00:00 AM', 2, 25.19, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (11007, 'PRINI', 8, '4/8/1998 12:00:00 AM', '5/6/1998 12:00:00 AM', '4/13/1998 12:00:00 AM', 2, 202.24, 'Princesa Isabel Vinhos', 'Estrada da saúde n. 58', 'Lisboa', null, '1756', 'Portugal');
INSERT INTO Orders VALUES (11008, 'ERNSH', 7, '4/8/1998 12:00:00 AM', '5/6/1998 12:00:00 AM', null, 3, 79.46, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (11009, 'GODOS', 2, '4/8/1998 12:00:00 AM', '5/6/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', 1, 59.11, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (11010, 'REGGC', 2, '4/9/1998 12:00:00 AM', '5/7/1998 12:00:00 AM', '4/21/1998 12:00:00 AM', 2, 28.71, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (11011, 'ALFKI', 3, '4/9/1998 12:00:00 AM', '5/7/1998 12:00:00 AM', '4/13/1998 12:00:00 AM', 1, 1.21, 'Alfred''s Futterkiste', 'Obere Str. 57', 'Berlin', null, '12209', 'Germany');
INSERT INTO Orders VALUES (11012, 'FRANK', 1, '4/9/1998 12:00:00 AM', '4/23/1998 12:00:00 AM', '4/17/1998 12:00:00 AM', 3, 242.95, 'Frankenversand', 'Berliner Platz 43', 'München', null, '80805', 'Germany');
INSERT INTO Orders VALUES (11013, 'ROMEY', 2, '4/9/1998 12:00:00 AM', '5/7/1998 12:00:00 AM', '4/10/1998 12:00:00 AM', 1, 32.99, 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', null, '28001', 'Spain');
INSERT INTO Orders VALUES (11014, 'LINOD', 2, '4/10/1998 12:00:00 AM', '5/8/1998 12:00:00 AM', '4/15/1998 12:00:00 AM', 3, 23.6, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (11015, 'SANTG', 2, '4/10/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', '4/20/1998 12:00:00 AM', 2, 4.62, 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', null, '4110', 'Norway');
INSERT INTO Orders VALUES (11016, 'AROUT', 9, '4/10/1998 12:00:00 AM', '5/8/1998 12:00:00 AM', '4/13/1998 12:00:00 AM', 2, 33.8, 'Around the Horn', 'Brook Farm Stratford St. Mary', 'Colchester', 'Essex', 'CO7 6JX', 'UK');
INSERT INTO Orders VALUES (11017, 'ERNSH', 9, '4/13/1998 12:00:00 AM', '5/11/1998 12:00:00 AM', '4/20/1998 12:00:00 AM', 2, 754.26, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (11018, 'LONEP', 4, '4/13/1998 12:00:00 AM', '5/11/1998 12:00:00 AM', '4/16/1998 12:00:00 AM', 2, 11.65, 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'USA');
INSERT INTO Orders VALUES (11019, 'RANCH', 6, '4/13/1998 12:00:00 AM', '5/11/1998 12:00:00 AM', null, 3, 3.17, 'Rancho grande', 'Av. del Libertador 900', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (11020, 'OTTIK', 2, '4/14/1998 12:00:00 AM', '5/12/1998 12:00:00 AM', '4/16/1998 12:00:00 AM', 2, 43.3, 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', null, '50739', 'Germany');
INSERT INTO Orders VALUES (11021, 'QUICK', 3, '4/14/1998 12:00:00 AM', '5/12/1998 12:00:00 AM', '4/21/1998 12:00:00 AM', 1, 297.18, 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', null, '01307', 'Germany');
INSERT INTO Orders VALUES (11022, 'HANAR', 9, '4/14/1998 12:00:00 AM', '5/12/1998 12:00:00 AM', '5/4/1998 12:00:00 AM', 2, 6.27, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (11023, 'BSBEV', 1, '4/14/1998 12:00:00 AM', '4/28/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', 2, 123.83, 'B''s Beverages', 'Fauntleroy Circus', 'London', null, 'EC2 5NT', 'UK');
INSERT INTO Orders VALUES (11024, 'EASTC', 4, '4/15/1998 12:00:00 AM', '5/13/1998 12:00:00 AM', '4/20/1998 12:00:00 AM', 1, 74.36, 'Eastern Connection', '35 King George', 'London', null, 'WX3 6FW', 'UK');
INSERT INTO Orders VALUES (11025, 'WARTH', 6, '4/15/1998 12:00:00 AM', '5/13/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', 3, 29.17, 'Wartian Herkku', 'Torikatu 38', 'Oulu', null, '90110', 'Finland');
INSERT INTO Orders VALUES (11026, 'FRANS', 4, '4/15/1998 12:00:00 AM', '5/13/1998 12:00:00 AM', '4/28/1998 12:00:00 AM', 1, 47.09, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', null, '10100', 'Italy');
INSERT INTO Orders VALUES (11027, 'BOTTM', 1, '4/16/1998 12:00:00 AM', '5/14/1998 12:00:00 AM', '4/20/1998 12:00:00 AM', 1, 52.52, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (11028, 'KOENE', 2, '4/16/1998 12:00:00 AM', '5/14/1998 12:00:00 AM', '4/22/1998 12:00:00 AM', 1, 29.59, 'Königlich Essen', 'Maubelstr. 90', 'Brandenburg', null, '14776', 'Germany');
INSERT INTO Orders VALUES (11029, 'CHOPS', 4, '4/16/1998 12:00:00 AM', '5/14/1998 12:00:00 AM', '4/27/1998 12:00:00 AM', 1, 47.84, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', null, '3012', 'Switzerland');
INSERT INTO Orders VALUES (11030, 'SAVEA', 7, '4/17/1998 12:00:00 AM', '5/15/1998 12:00:00 AM', '4/27/1998 12:00:00 AM', 2, 830.75, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (11031, 'SAVEA', 6, '4/17/1998 12:00:00 AM', '5/15/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', 2, 227.22, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (11032, 'WHITC', 2, '4/17/1998 12:00:00 AM', '5/15/1998 12:00:00 AM', '4/23/1998 12:00:00 AM', 3, 606.19, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (11033, 'RICSU', 7, '4/17/1998 12:00:00 AM', '5/15/1998 12:00:00 AM', '4/23/1998 12:00:00 AM', 3, 84.74, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (11034, 'OLDWO', 8, '4/20/1998 12:00:00 AM', '6/1/1998 12:00:00 AM', '4/27/1998 12:00:00 AM', 1, 40.32, 'Old World Delicatessen', '2743 Bering St.', 'Anchorage', 'AK', '99508', 'USA');
INSERT INTO Orders VALUES (11035, 'SUPRD', 2, '4/20/1998 12:00:00 AM', '5/18/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', 2, 0.17, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (11036, 'DRACD', 8, '4/20/1998 12:00:00 AM', '5/18/1998 12:00:00 AM', '4/22/1998 12:00:00 AM', 3, 149.47, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', null, '52066', 'Germany');
INSERT INTO Orders VALUES (11037, 'GODOS', 7, '4/21/1998 12:00:00 AM', '5/19/1998 12:00:00 AM', '4/27/1998 12:00:00 AM', 1, 3.2, 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', null, '41101', 'Spain');
INSERT INTO Orders VALUES (11038, 'SUPRD', 1, '4/21/1998 12:00:00 AM', '5/19/1998 12:00:00 AM', '4/30/1998 12:00:00 AM', 2, 29.59, 'Suprêmes délices', 'Boulevard Tirou, 255', 'Charleroi', null, 'B-6000', 'Belgium');
INSERT INTO Orders VALUES (11039, 'LINOD', 1, '4/21/1998 12:00:00 AM', '5/19/1998 12:00:00 AM', null, 2, 65.0, 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela');
INSERT INTO Orders VALUES (11040, 'GREAL', 4, '4/22/1998 12:00:00 AM', '5/20/1998 12:00:00 AM', null, 3, 18.84, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (11041, 'CHOPS', 3, '4/22/1998 12:00:00 AM', '5/20/1998 12:00:00 AM', '4/28/1998 12:00:00 AM', 2, 48.22, 'Chop-suey Chinese', 'Hauptstr. 31', 'Bern', null, '3012', 'Switzerland');
INSERT INTO Orders VALUES (11042, 'COMMI', 2, '4/22/1998 12:00:00 AM', '5/6/1998 12:00:00 AM', '5/1/1998 12:00:00 AM', 1, 29.99, 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'Sao Paulo', 'SP', '05432-043', 'Brazil');
INSERT INTO Orders VALUES (11043, 'SPECD', 5, '4/22/1998 12:00:00 AM', '5/20/1998 12:00:00 AM', '4/29/1998 12:00:00 AM', 2, 8.8, 'Spécialités du monde', '25, rue Lauriston', 'Paris', null, '75016', 'France');
INSERT INTO Orders VALUES (11044, 'WOLZA', 4, '4/23/1998 12:00:00 AM', '5/21/1998 12:00:00 AM', '5/1/1998 12:00:00 AM', 1, 8.72, 'Wolski Zajazd', 'ul. Filtrowa 68', 'Warszawa', null, '01-012', 'Poland');
INSERT INTO Orders VALUES (11045, 'BOTTM', 6, '4/23/1998 12:00:00 AM', '5/21/1998 12:00:00 AM', null, 2, 70.58, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (11046, 'WANDK', 8, '4/23/1998 12:00:00 AM', '5/21/1998 12:00:00 AM', '4/24/1998 12:00:00 AM', 2, 71.64, 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', null, '70563', 'Germany');
INSERT INTO Orders VALUES (11047, 'EASTC', 7, '4/24/1998 12:00:00 AM', '5/22/1998 12:00:00 AM', '5/1/1998 12:00:00 AM', 3, 46.62, 'Eastern Connection', '35 King George', 'London', null, 'WX3 6FW', 'UK');
INSERT INTO Orders VALUES (11048, 'BOTTM', 7, '4/24/1998 12:00:00 AM', '5/22/1998 12:00:00 AM', '4/30/1998 12:00:00 AM', 3, 24.12, 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canada');
INSERT INTO Orders VALUES (11049, 'GOURL', 3, '4/24/1998 12:00:00 AM', '5/22/1998 12:00:00 AM', '5/4/1998 12:00:00 AM', 1, 8.34, 'Gourmet Lanchonetes', 'Av. Brasil, 442', 'Campinas', 'SP', '04876-786', 'Brazil');
INSERT INTO Orders VALUES (11050, 'FOLKO', 8, '4/27/1998 12:00:00 AM', '5/25/1998 12:00:00 AM', '5/5/1998 12:00:00 AM', 2, 59.41, 'Folk och fä HB', 'Åkergatan 24', 'Bräcke', null, 'S-844 67', 'Sweden');
INSERT INTO Orders VALUES (11051, 'LAMAI', 7, '4/27/1998 12:00:00 AM', '5/25/1998 12:00:00 AM', null, 3, 2.79, 'La maison d''Asie', '1 rue Alsace-Lorraine', 'Toulouse', null, '31000', 'France');
INSERT INTO Orders VALUES (11052, 'HANAR', 3, '4/27/1998 12:00:00 AM', '5/25/1998 12:00:00 AM', '5/1/1998 12:00:00 AM', 1, 67.26, 'Hanari Carnes', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brazil');
INSERT INTO Orders VALUES (11053, 'PICCO', 2, '4/27/1998 12:00:00 AM', '5/25/1998 12:00:00 AM', '4/29/1998 12:00:00 AM', 2, 53.05, 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', null, '5020', 'Austria');
INSERT INTO Orders VALUES (11054, 'CACTU', 8, '4/28/1998 12:00:00 AM', '5/26/1998 12:00:00 AM', null, 1, 0.33, 'Cactus Comidas para llevar', 'Cerrito 333', 'Buenos Aires', null, '1010', 'Argentina');
INSERT INTO Orders VALUES (11055, 'HILAA', 7, '4/28/1998 12:00:00 AM', '5/26/1998 12:00:00 AM', '5/5/1998 12:00:00 AM', 2, 120.92, 'HILARION-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela');
INSERT INTO Orders VALUES (11056, 'EASTC', 8, '4/28/1998 12:00:00 AM', '5/12/1998 12:00:00 AM', '5/1/1998 12:00:00 AM', 2, 278.96, 'Eastern Connection', '35 King George', 'London', null, 'WX3 6FW', 'UK');
INSERT INTO Orders VALUES (11057, 'NORTS', 3, '4/29/1998 12:00:00 AM', '5/27/1998 12:00:00 AM', '5/1/1998 12:00:00 AM', 3, 4.13, 'North/South', 'South House 300 Queensbridge', 'London', null, 'SW7 1RZ', 'UK');
INSERT INTO Orders VALUES (11058, 'BLAUS', 9, '4/29/1998 12:00:00 AM', '5/27/1998 12:00:00 AM', null, 3, 31.14, 'Blauer See Delikatessen', 'Forsterstr. 57', 'Mannheim', null, '68306', 'Germany');
INSERT INTO Orders VALUES (11059, 'RICAR', 2, '4/29/1998 12:00:00 AM', '6/10/1998 12:00:00 AM', null, 2, 85.8, 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brazil');
INSERT INTO Orders VALUES (11060, 'FRANS', 2, '4/30/1998 12:00:00 AM', '5/28/1998 12:00:00 AM', '5/4/1998 12:00:00 AM', 2, 10.98, 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', null, '10100', 'Italy');
INSERT INTO Orders VALUES (11061, 'GREAL', 4, '4/30/1998 12:00:00 AM', '6/11/1998 12:00:00 AM', null, 3, 14.01, 'Great Lakes Food Market', '2732 Baker Blvd.', 'Eugene', 'OR', '97403', 'USA');
INSERT INTO Orders VALUES (11062, 'REGGC', 4, '4/30/1998 12:00:00 AM', '5/28/1998 12:00:00 AM', null, 2, 29.93, 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', null, '42100', 'Italy');
INSERT INTO Orders VALUES (11063, 'HUNGO', 3, '4/30/1998 12:00:00 AM', '5/28/1998 12:00:00 AM', '5/6/1998 12:00:00 AM', 2, 81.73, 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', null, 'Ireland');
INSERT INTO Orders VALUES (11064, 'SAVEA', 1, '5/1/1998 12:00:00 AM', '5/29/1998 12:00:00 AM', '5/4/1998 12:00:00 AM', 1, 30.09, 'Save-a-lot Markets', '187 Suffolk Ln.', 'Boise', 'ID', '83720', 'USA');
INSERT INTO Orders VALUES (11065, 'LILAS', 8, '5/1/1998 12:00:00 AM', '5/29/1998 12:00:00 AM', null, 1, 12.91, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (11066, 'WHITC', 7, '5/1/1998 12:00:00 AM', '5/29/1998 12:00:00 AM', '5/4/1998 12:00:00 AM', 2, 44.72, 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'USA');
INSERT INTO Orders VALUES (11067, 'DRACD', 1, '5/4/1998 12:00:00 AM', '5/18/1998 12:00:00 AM', '5/6/1998 12:00:00 AM', 2, 7.98, 'Drachenblut Delikatessen', 'Walserweg 21', 'Aachen', null, '52066', 'Germany');
INSERT INTO Orders VALUES (11068, 'QUEEN', 8, '5/4/1998 12:00:00 AM', '6/1/1998 12:00:00 AM', null, 2, 81.75, 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brazil');
INSERT INTO Orders VALUES (11069, 'TORTU', 1, '5/4/1998 12:00:00 AM', '6/1/1998 12:00:00 AM', '5/6/1998 12:00:00 AM', 2, 15.67, 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (11070, 'LEHMS', 2, '5/5/1998 12:00:00 AM', '6/2/1998 12:00:00 AM', null, 1, 136.0, 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M.', null, '60528', 'Germany');
INSERT INTO Orders VALUES (11071, 'LILAS', 1, '5/5/1998 12:00:00 AM', '6/2/1998 12:00:00 AM', null, 1, 0.93, 'LILA-Supermercado', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'Lara', '3508', 'Venezuela');
INSERT INTO Orders VALUES (11072, 'ERNSH', 4, '5/5/1998 12:00:00 AM', '6/2/1998 12:00:00 AM', null, 2, 258.64, 'Ernst Handel', 'Kirchgasse 6', 'Graz', null, '8010', 'Austria');
INSERT INTO Orders VALUES (11073, 'PERIC', 2, '5/5/1998 12:00:00 AM', '6/2/1998 12:00:00 AM', null, 2, 24.95, 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', null, '05033', 'Mexico');
INSERT INTO Orders VALUES (11074, 'SIMOB', 7, '5/6/1998 12:00:00 AM', '6/3/1998 12:00:00 AM', null, 2, 18.44, 'Simons bistro', 'Vinbæltet 34', 'Kobenhavn', null, '1734', 'Denmark');
INSERT INTO Orders VALUES (11075, 'RICSU', 8, '5/6/1998 12:00:00 AM', '6/3/1998 12:00:00 AM', null, 2, 6.19, 'Richter Supermarkt', 'Starenweg 5', 'Genève', null, '1204', 'Switzerland');
INSERT INTO Orders VALUES (11076, 'BONAP', 4, '5/6/1998 12:00:00 AM', '6/3/1998 12:00:00 AM', null, 2, 38.28, 'Bon app''', '12, rue des Bouchers', 'Marseille', null, '13008', 'France');
INSERT INTO Orders VALUES (11077, 'RATTC', 1, '5/6/1998 12:00:00 AM', '6/3/1998 12:00:00 AM', null, 2, 8.53, 'Rattlesnake Canyon Grocery', '2817 Milton Dr.', 'Albuquerque', 'NM', '87110', 'USA');
INSERT INTO Products VALUES (1, 'Chai', 1, 1, '10 boxes x 20 bags', 18.0, 39, 0, 10, 0);
INSERT INTO Products VALUES (2, 'Chang', 1, 1, '24 - 12 oz bottles', 19.0, 17, 40, 25, 0);
INSERT INTO Products VALUES (3, 'Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10.0, 13, 70, 25, 0);
INSERT INTO Products VALUES (4, 'Chef Anton''s Cajun Seasoning', 2, 2, '48 - 6 oz jars', 22.0, 53, 0, 0, 0);
INSERT INTO Products VALUES (5, 'Chef Anton''s Gumbo Mix', 2, 2, '36 boxes', 21.35, 0, 0, 0, 1);
INSERT INTO Products VALUES (6, 'Grandma''s Boysenberry Spread', 3, 2, '12 - 8 oz jars', 25.0, 120, 0, 25, 0);
INSERT INTO Products VALUES (7, 'Uncle Bob''s Organic Dried Pears', 3, 7, '12 - 1 lb pkgs.', 30.0, 15, 0, 10, 0);
INSERT INTO Products VALUES (8, 'Northwoods Cranberry Sauce', 3, 2, '12 - 12 oz jars', 40.0, 6, 0, 0, 0);
INSERT INTO Products VALUES (9, 'Mishi Kobe Niku', 4, 6, '18 - 500 g pkgs.', 97.0, 29, 0, 0, 1);
INSERT INTO Products VALUES (10, 'Ikura', 4, 8, '12 - 200 ml jars', 31.0, 31, 0, 0, 0);
INSERT INTO Products VALUES (11, 'Queso Cabrales', 5, 4, '1 kg pkg.', 21.0, 22, 30, 30, 0);
INSERT INTO Products VALUES (12, 'Queso Manchego La Pastora', 5, 4, '10 - 500 g pkgs.', 38.0, 86, 0, 0, 0);
INSERT INTO Products VALUES (13, 'Konbu', 6, 8, '2 kg box', 6.0, 24, 0, 5, 0);
INSERT INTO Products VALUES (14, 'Tofu', 6, 7, '40 - 100 g pkgs.', 23.25, 35, 0, 0, 0);
INSERT INTO Products VALUES (15, 'Genen Shouyu', 6, 2, '24 - 250 ml bottles', 15.5, 39, 0, 5, 0);
INSERT INTO Products VALUES (16, 'Pavlova', 7, 3, '32 - 500 g boxes', 17.45, 29, 0, 10, 0);
INSERT INTO Products VALUES (17, 'Alice Mutton', 7, 6, '20 - 1 kg tins', 39.0, 0, 0, 0, 1);
INSERT INTO Products VALUES (18, 'Carnarvon Tigers', 7, 8, '16 kg pkg.', 62.5, 42, 0, 0, 0);
INSERT INTO Products VALUES (19, 'Teatime Chocolate Biscuits', 8, 3, '10 boxes x 12 pieces', 9.2, 25, 0, 5, 0);
INSERT INTO Products VALUES (20, 'Sir Rodney''s Marmalade', 8, 3, '30 gift boxes', 81.0, 40, 0, 0, 0);
INSERT INTO Products VALUES (21, 'Sir Rodney''s Scones', 8, 3, '24 pkgs. x 4 pieces', 10.0, 3, 40, 5, 0);
INSERT INTO Products VALUES (22, 'Gustaf''s Knäckebröd', 9, 5, '24 - 500 g pkgs.', 21.0, 104, 0, 25, 0);
INSERT INTO Products VALUES (23, 'Tunnbröd', 9, 5, '12 - 250 g pkgs.', 9.0, 61, 0, 25, 0);
INSERT INTO Products VALUES (24, 'Guaraná Fantástica', 10, 1, '12 - 355 ml cans', 4.5, 20, 0, 0, 1);
INSERT INTO Products VALUES (25, 'NuNuCa Nuß-Nougat-Creme', 11, 3, '20 - 450 g glasses', 14.0, 76, 0, 30, 0);
INSERT INTO Products VALUES (26, 'Gumbär Gummibärchen', 11, 3, '100 - 250 g bags', 31.23, 15, 0, 0, 0);
INSERT INTO Products VALUES (27, 'Schoggi Schokolade', 11, 3, '100 - 100 g pieces', 43.9, 49, 0, 30, 0);
INSERT INTO Products VALUES (28, 'Rössle Sauerkraut', 12, 7, '25 - 825 g cans', 45.6, 26, 0, 0, 1);
INSERT INTO Products VALUES (29, 'Thüringer Rostbratwurst', 12, 6, '50 bags x 30 sausgs.', 123.79, 0, 0, 0, 1);
INSERT INTO Products VALUES (30, 'Nord-Ost Matjeshering', 13, 8, '10 - 200 g glasses', 25.89, 10, 0, 15, 0);
INSERT INTO Products VALUES (31, 'Gorgonzola Telino', 14, 4, '12 - 100 g pkgs', 12.5, 0, 70, 20, 0);
INSERT INTO Products VALUES (32, 'Mascarpone Fabioli', 14, 4, '24 - 200 g pkgs.', 32.0, 9, 40, 25, 0);
INSERT INTO Products VALUES (33, 'Geitost', 15, 4, '500 g', 2.5, 112, 0, 20, 0);
INSERT INTO Products VALUES (34, 'Sasquatch Ale', 16, 1, '24 - 12 oz bottles', 14.0, 111, 0, 15, 0);
INSERT INTO Products VALUES (35, 'Steeleye Stout', 16, 1, '24 - 12 oz bottles', 18.0, 20, 0, 15, 0);
INSERT INTO Products VALUES (36, 'Inlagd Sill', 17, 8, '24 - 250 g  jars', 19.0, 112, 0, 20, 0);
INSERT INTO Products VALUES (37, 'Gravad lax', 17, 8, '12 - 500 g pkgs.', 26.0, 11, 50, 25, 0);
INSERT INTO Products VALUES (38, 'Côte de Blaye', 18, 1, '12 - 75 cl bottles', 263.5, 17, 0, 15, 0);
INSERT INTO Products VALUES (39, 'Chartreuse verte', 18, 1, '750 cc per bottle', 18.0, 69, 0, 5, 0);
INSERT INTO Products VALUES (40, 'Boston Crab Meat', 19, 8, '24 - 4 oz tins', 18.4, 123, 0, 30, 0);
INSERT INTO Products VALUES (41, 'Jack''s New England Clam Chowder', 19, 8, '12 - 12 oz cans', 9.65, 85, 0, 10, 0);
INSERT INTO Products VALUES (42, 'Singaporean Hokkien Fried Mee', 20, 5, '32 - 1 kg pkgs.', 14.0, 26, 0, 0, 1);
INSERT INTO Products VALUES (43, 'Ipoh Coffee', 20, 1, '16 - 500 g tins', 46.0, 17, 10, 25, 0);
INSERT INTO Products VALUES (44, 'Gula Malacca', 20, 2, '20 - 2 kg bags', 19.45, 27, 0, 15, 0);
INSERT INTO Products VALUES (45, 'Rogede sild', 21, 8, '1k pkg.', 9.5, 5, 70, 15, 0);
INSERT INTO Products VALUES (46, 'Spegesild', 21, 8, '4 - 450 g glasses', 12.0, 95, 0, 0, 0);
INSERT INTO Products VALUES (47, 'Zaanse koeken', 22, 3, '10 - 4 oz boxes', 9.5, 36, 0, 0, 0);
INSERT INTO Products VALUES (48, 'Chocolade', 22, 3, '10 pkgs.', 12.75, 15, 70, 25, 0);
INSERT INTO Products VALUES (49, 'Maxilaku', 23, 3, '24 - 50 g pkgs.', 20.0, 10, 60, 15, 0);
INSERT INTO Products VALUES (50, 'Valkoinen suklaa', 23, 3, '12 - 100 g bars', 16.25, 65, 0, 30, 0);
INSERT INTO Products VALUES (51, 'Manjimup Dried Apples', 24, 7, '50 - 300 g pkgs.', 53.0, 20, 0, 10, 0);
INSERT INTO Products VALUES (52, 'Filo Mix', 24, 5, '16 - 2 kg boxes', 7.0, 38, 0, 25, 0);
INSERT INTO Products VALUES (53, 'Perth Pasties', 24, 6, '48 pieces', 32.8, 0, 0, 0, 1);
INSERT INTO Products VALUES (54, 'Tourtière', 25, 6, '16 pies', 7.45, 21, 0, 10, 0);
INSERT INTO Products VALUES (55, 'Pâté chinois', 25, 6, '24 boxes x 2 pies', 24.0, 115, 0, 20, 0);
INSERT INTO Products VALUES (56, 'Gnocchi di nonna Alice', 26, 5, '24 - 250 g pkgs.', 38.0, 21, 10, 30, 0);
INSERT INTO Products VALUES (57, 'Ravioli Angelo', 26, 5, '24 - 250 g pkgs.', 19.5, 36, 0, 20, 0);
INSERT INTO Products VALUES (58, 'Escargots de Bourgogne', 27, 8, '24 pieces', 13.25, 62, 0, 20, 0);
INSERT INTO Products VALUES (59, 'Raclette Courdavault', 28, 4, '5 kg pkg.', 55.0, 79, 0, 0, 0);
INSERT INTO Products VALUES (60, 'Camembert Pierrot', 28, 4, '15 - 300 g rounds', 34.0, 19, 0, 0, 0);
INSERT INTO Products VALUES (61, 'Sirop d''érable', 29, 2, '24 - 500 ml bottles', 28.5, 113, 0, 25, 0);
INSERT INTO Products VALUES (62, 'Tarte au sucre', 29, 3, '48 pies', 49.3, 17, 0, 0, 0);
INSERT INTO Products VALUES (63, 'Vegie-spread', 7, 2, '15 - 625 g jars', 43.9, 24, 0, 5, 0);
INSERT INTO Products VALUES (64, 'Wimmers gute Semmelknödel', 12, 5, '20 bags x 4 pieces', 33.25, 22, 80, 30, 0);
INSERT INTO Products VALUES (65, 'Louisiana Fiery Hot Pepper Sauce', 2, 2, '32 - 8 oz bottles', 21.05, 76, 0, 0, 0);
INSERT INTO Products VALUES (66, 'Louisiana Hot Spiced Okra', 2, 2, '24 - 8 oz jars', 17.0, 4, 100, 20, 0);
INSERT INTO Products VALUES (67, 'Laughing Lumberjack Lager', 16, 1, '24 - 12 oz bottles', 14.0, 52, 0, 10, 0);
INSERT INTO Products VALUES (68, 'Scottish Longbreads', 8, 3, '10 boxes x 8 pieces', 12.5, 6, 10, 15, 0);
INSERT INTO Products VALUES (69, 'Gudbrandsdalsost', 15, 4, '10 kg pkg.', 36.0, 26, 0, 15, 0);
INSERT INTO Products VALUES (70, 'Outback Lager', 7, 1, '24 - 355 ml bottles', 15.0, 15, 10, 30, 0);
INSERT INTO Products VALUES (71, 'Flotemysost', 15, 4, '10 - 500 g pkgs.', 21.5, 26, 0, 0, 0);
INSERT INTO Products VALUES (72, 'Mozzarella di Giovanni', 14, 4, '24 - 200 g pkgs.', 34.8, 14, 0, 0, 0);
INSERT INTO Products VALUES (73, 'Röd Kaviar', 17, 8, '24 - 150 g jars', 15.0, 101, 0, 5, 0);
INSERT INTO Products VALUES (74, 'Longlife Tofu', 4, 7, '5 kg pkg.', 10.0, 4, 20, 5, 0);
INSERT INTO Products VALUES (75, 'Rhönbräu Klosterbier', 12, 1, '24 - 0.5 l bottles', 7.75, 125, 0, 25, 0);
INSERT INTO Products VALUES (76, 'Lakkalikööri', 23, 1, '500 ml', 18.0, 57, 0, 20, 0);
INSERT INTO Products VALUES (77, 'Original Frankfurter grüne Soße', 12, 2, '12 boxes', 13.0, 32, 0, 15, 0);
INSERT INTO Region VALUES (1, 'Eastern                                           ');
INSERT INTO Region VALUES (2, 'Western                                           ');
INSERT INTO Region VALUES (3, 'Northern                                          ');
INSERT INTO Region VALUES (4, 'Southern                                          ');
INSERT INTO Shippers VALUES (1, 'Speedy Express', '(503) 555-9831');
INSERT INTO Shippers VALUES (2, 'United Package', '(503) 555-3199');
INSERT INTO Shippers VALUES (3, 'Federal Shipping', '(503) 555-9931');
INSERT INTO Suppliers VALUES (1, 'Exotic Liquids', 'Charlotte Cooper', 'Purchasing Manager', '49 Gilbert St.', 'London', null, 'EC1 4SD', 'UK', '(171) 555-2222', null, null);
INSERT INTO Suppliers VALUES (2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Order Administrator', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'USA', '(100) 555-4822', null, #CAJUN.HTM#);
INSERT INTO Suppliers VALUES (3, 'Grandma Kelly''s Homestead', 'Regina Murphy', 'Sales Representative', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'USA', '(313) 555-5735', '(313) 555-3349', null);
INSERT INTO Suppliers VALUES (4, 'Tokyo Traders', 'Yoshi Nagase', 'Marketing Manager', '9-8 Sekimai Musashino-shi', 'Tokyo', null, '100', 'Japan', '(03) 3555-5011', null, null);
INSERT INTO Suppliers VALUES (5, 'Cooperativa de Quesos ''Las Cabras''', 'Antonio del Valle Saavedra', 'Export Administrator', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'Spain', '(98) 598 76 54', null, null);
INSERT INTO Suppliers VALUES (6, 'Mayumi''s', 'Mayumi Ohno', 'Marketing Representative', '92 Setsuko Chuo-ku', 'Osaka', null, '545', 'Japan', '(06) 431-7877', null, Mayumi's (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/mayumi.htm#);
INSERT INTO Suppliers VALUES (7, 'Pavlova, Ltd.', 'Ian Devling', 'Marketing Manager', '74 Rose St. Moonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', null);
INSERT INTO Suppliers VALUES (8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Sales Representative', '29 King''s Way', 'Manchester', null, 'M14 GSD', 'UK', '(161) 555-4448', null, null);
INSERT INTO Suppliers VALUES (9, 'PB Knäckebröd AB', 'Lars Peterson', 'Sales Agent', 'Kaloadagatan 13', 'Göteborg', null, 'S-345 67', 'Sweden', '031-987 65 43', '031-987 65 91', null);
INSERT INTO Suppliers VALUES (10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Marketing Manager', 'Av. das Americanas 12.890', 'Sao Paulo', null, '5442', 'Brazil', '(11) 555 4640', null, null);
INSERT INTO Suppliers VALUES (11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Sales Manager', 'Tiergartenstraße 5', 'Berlin', null, '10785', 'Germany', '(010) 9984510', null, null);
INSERT INTO Suppliers VALUES (12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'International Marketing Mgr.', 'Bogenallee 51', 'Frankfurt', null, '60439', 'Germany', '(069) 992755', null, Plutzer (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/plutzer.htm#);
INSERT INTO Suppliers VALUES (13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinator Foreign Markets', 'Frahmredder 112a', 'Cuxhaven', null, '27478', 'Germany', '(04721) 8713', '(04721) 8714', null);
INSERT INTO Suppliers VALUES (14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Sales Representative', 'Viale Dante, 75', 'Ravenna', null, '48100', 'Italy', '(0544) 60323', '(0544) 60603', #FORMAGGI.HTM#);
INSERT INTO Suppliers VALUES (15, 'Norske Meierier', 'Beate Vileid', 'Marketing Manager', 'Hatlevegen 5', 'Sandvika', null, '1320', 'Norway', '(0)2-953010', null, null);
INSERT INTO Suppliers VALUES (16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Regional Account Rep.', '3400 - 8th Avenue Suite 210', 'Bend', 'OR', '97101', 'USA', '(503) 555-9931', null, null);
INSERT INTO Suppliers VALUES (17, 'Svensk Sjöföda AB', 'Michael Björn', 'Sales Representative', 'Brovallavägen 231', 'Stockholm', null, 'S-123 45', 'Sweden', '08-123 45 67', null, null);
INSERT INTO Suppliers VALUES (18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Sales Manager', '203, Rue des Francs-Bourgeois', 'Paris', null, '75004', 'France', '(1) 03.83.00.68', '(1) 03.83.00.62', null);
INSERT INTO Suppliers VALUES (19, 'New England Seafood Cannery', 'Robb Merchant', 'Wholesale Account Agent', 'Order Processing Dept. 2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'USA', '(617) 555-3267', '(617) 555-3389', null);
INSERT INTO Suppliers VALUES (20, 'Leka Trading', 'Chandra Leka', 'Owner', '471 Serangoon Loop, Suite #402', 'Singapore', null, '0512', 'Singapore', '555-8787', null, null);
INSERT INTO Suppliers VALUES (21, 'Lyngbysild', 'Niels Petersen', 'Sales Manager', 'Lyngbysild Fiskebakken 10', 'Lyngby', null, '2800', 'Denmark', '43844108', '43844115', null);
INSERT INTO Suppliers VALUES (22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Accounting Manager', 'Verkoop Rijnweg 22', 'Zaandam', null, '9999 ZZ', 'Netherlands', '(12345) 1212', '(12345) 1210', null);
INSERT INTO Suppliers VALUES (23, 'Karkki Oy', 'Anne Heikkonen', 'Product Manager', 'Valtakatu 12', 'Lappeenranta', null, '53120', 'Finland', '(953) 10956', null, null);
INSERT INTO Suppliers VALUES (24, 'G''day, Mate', 'Wendy Mackenzie', 'Sales Representative', '170 Prince Edward Parade Hunter''s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', G'day Mate (on the World Wide Web)#http://www.microsoft.com/accessdev/sampleapps/gdaymate.htm#);
INSERT INTO Suppliers VALUES (25, 'Ma Maison', 'Jean-Guy Lauzon', 'Marketing Manager', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canada', '(514) 555-9022', null, null);
INSERT INTO Suppliers VALUES (26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Order Administrator', 'Via dei Gelsomini, 153', 'Salerno', null, '84100', 'Italy', '(089) 6547665', '(089) 6547667', null);
INSERT INTO Suppliers VALUES (27, 'Escargots Nouveaux', 'Marie Delamare', 'Sales Manager', '22, rue H. Voiron', 'Montceau', null, '71300', 'France', '85.57.00.07', null, null);
INSERT INTO Suppliers VALUES (28, 'Gai pâturage', 'Eliane Noz', 'Sales Representative', 'Bat. B 3, rue des Alpes', 'Annecy', null, '74000', 'France', '38.76.98.06', '38.76.98.58', null);
INSERT INTO Suppliers VALUES (29, 'Forêts d''érables', 'Chantal Goulet', 'Accounting Manager', '148 rue Chasseur', 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canada', '(514) 555-2955', '(514) 555-2921', null);
INSERT INTO Territories VALUES ('01581', 'Westboro                                          ', 1);
INSERT INTO Territories VALUES ('01730', 'Bedford                                           ', 1);
INSERT INTO Territories VALUES ('01833', 'Georgetow                                         ', 1);
INSERT INTO Territories VALUES ('02116', 'Boston                                            ', 1);
INSERT INTO Territories VALUES ('02139', 'Cambridge                                         ', 1);
INSERT INTO Territories VALUES ('02184', 'Braintree                                         ', 1);
INSERT INTO Territories VALUES ('02903', 'Providence                                        ', 1);
INSERT INTO Territories VALUES ('03049', 'Hollis                                            ', 3);
INSERT INTO Territories VALUES ('03801', 'Portsmouth                                        ', 3);
INSERT INTO Territories VALUES ('06897', 'Wilton                                            ', 1);
INSERT INTO Territories VALUES ('07960', 'Morristown                                        ', 1);
INSERT INTO Territories VALUES ('08837', 'Edison                                            ', 1);
INSERT INTO Territories VALUES ('10019', 'New York                                          ', 1);
INSERT INTO Territories VALUES ('10038', 'New York                                          ', 1);
INSERT INTO Territories VALUES ('11747', 'Mellvile                                          ', 1);
INSERT INTO Territories VALUES ('14450', 'Fairport                                          ', 1);
INSERT INTO Territories VALUES ('19428', 'Philadelphia                                      ', 3);
INSERT INTO Territories VALUES ('19713', 'Neward                                            ', 1);
INSERT INTO Territories VALUES ('20852', 'Rockville                                         ', 1);
INSERT INTO Territories VALUES ('27403', 'Greensboro                                        ', 1);
INSERT INTO Territories VALUES ('27511', 'Cary                                              ', 1);
INSERT INTO Territories VALUES ('29202', 'Columbia                                          ', 4);
INSERT INTO Territories VALUES ('30346', 'Atlanta                                           ', 4);
INSERT INTO Territories VALUES ('31406', 'Savannah                                          ', 4);
INSERT INTO Territories VALUES ('32859', 'Orlando                                           ', 4);
INSERT INTO Territories VALUES ('33607', 'Tampa                                             ', 4);
INSERT INTO Territories VALUES ('40222', 'Louisville                                        ', 1);
INSERT INTO Territories VALUES ('44122', 'Beachwood                                         ', 3);
INSERT INTO Territories VALUES ('45839', 'Findlay                                           ', 3);
INSERT INTO Territories VALUES ('48075', 'Southfield                                        ', 3);
INSERT INTO Territories VALUES ('48084', 'Troy                                              ', 3);
INSERT INTO Territories VALUES ('48304', 'Bloomfield Hills                                  ', 3);
INSERT INTO Territories VALUES ('53404', 'Racine                                            ', 3);
INSERT INTO Territories VALUES ('55113', 'Roseville                                         ', 3);
INSERT INTO Territories VALUES ('55439', 'Minneapolis                                       ', 3);
INSERT INTO Territories VALUES ('60179', 'Hoffman Estates                                   ', 2);
INSERT INTO Territories VALUES ('60601', 'Chicago                                           ', 2);
INSERT INTO Territories VALUES ('72716', 'Bentonville                                       ', 4);
INSERT INTO Territories VALUES ('75234', 'Dallas                                            ', 4);
INSERT INTO Territories VALUES ('78759', 'Austin                                            ', 4);
INSERT INTO Territories VALUES ('80202', 'Denver                                            ', 2);
INSERT INTO Territories VALUES ('80909', 'Colorado Springs                                  ', 2);
INSERT INTO Territories VALUES ('85014', 'Phoenix                                           ', 2);
INSERT INTO Territories VALUES ('85251', 'Scottsdale                                        ', 2);
INSERT INTO Territories VALUES ('90405', 'Santa Monica                                      ', 2);
INSERT INTO Territories VALUES ('94025', 'Menlo Park                                        ', 2);
INSERT INTO Territories VALUES ('94105', 'San Francisco                                     ', 2);
INSERT INTO Territories VALUES ('95008', 'Campbell                                          ', 2);
INSERT INTO Territories VALUES ('95054', 'Santa Clara                                       ', 2);
INSERT INTO Territories VALUES ('95060', 'Santa Cruz                                        ', 2);
INSERT INTO Territories VALUES ('98004', 'Bellevue                                          ', 2);
INSERT INTO Territories VALUES ('98052', 'Redmond                                           ', 2);
INSERT INTO Territories VALUES ('98104', 'Seattle                                           ', 2);

/*-----Create Index Statements------------------------*/ 
CREATE INDEX Categories_1 ON Categories (CategoryID DESC);
CREATE INDEX CustomerCustomerDemo_1 ON CustomerCustomerDemo (CustomerID DESC);
CREATE INDEX CustomerCustomerDemo_1_CustomerTypeID ON CustomerCustomerDemo (CustomerTypeID DESC);
CREATE INDEX CustomerDemographics_1 ON CustomerDemographics (CustomerTypeID DESC);
CREATE INDEX Customers_1 ON Customers (CustomerID DESC);
CREATE INDEX Employees_1 ON Employees (EmployeeID DESC);
CREATE INDEX EmployeeTerritories_1 ON EmployeeTerritories (EmployeeID DESC);
CREATE INDEX EmployeeTerritories_1_TerritoryID ON EmployeeTerritories (TerritoryID DESC);
CREATE INDEX Order Details_1 ON Order Details (OrderID DESC);
CREATE INDEX Order Details_1_ProductID ON Order Details (ProductID DESC);
CREATE INDEX Orders_1 ON Orders (OrderID DESC);
CREATE INDEX Products_1 ON Products (ProductID DESC);
CREATE INDEX Region_1 ON Region (RegionID DESC);
CREATE INDEX Shippers_1 ON Shippers (ShipperID DESC);
CREATE INDEX Suppliers_1 ON Suppliers (SupplierID DESC);
CREATE INDEX Territories_1 ON Territories (TerritoryID DESC);
