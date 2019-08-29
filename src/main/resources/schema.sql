CREATE TABLE employee (
  id varchar(36) PRIMARY KEY,
  name VARCHAR(64) NOT NULL,
  age   int(4) NOT NULL
);
CREATE TABLE SystemAdministrator (
  sysAdmID varchar(36) PRIMARY KEY,
  username VARCHAR(64) NOT NULL,
  password  VARCHAR(64) NOT NULL

);
CREATE TABLE Company (
  CompanyID varchar(36) PRIMARY KEY,
  CompanyAdminID VARCHAR(64) NOT NULL,
  CompanyName  VARCHAR(64) NOT NULL,
  SysAdmID varchar(36) NOT NULL ,
    FOREIGN KEY (SysAdmID) REFERENCES SystemAdministrator ( sysAdmID ),
    FOREIGN KEY (CompanyAdminID) REFERENCES CompanyAdminsitrator(CompanyAdminID )
);
CREATE TABLE Employee(
  EmployeeID varchar(36) PRIMARY KEY,
  CompanyID varchar(36) NOT NULL,
  FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID )
);
CREATE TABLE CompanyAdminsitrator(
  CompanyAdminID varchar(36) PRIMARY KEY,
  CompanyAdminName varchar(36) NOT NULL,
    EmployeeID varchar(36) NOT NULL,
  FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID )
);