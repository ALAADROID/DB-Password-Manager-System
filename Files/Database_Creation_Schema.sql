-- DDL Creation commands
CREATE DATABASE PasswordManagerDB;
GO

USE PasswordManagerDB;
GO

Create TABLE Users(
	userID INT PRIMARY KEY, 
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	masterPassword VARCHAR(255) NOT NULL,
	createdAt DATE
);
GO

CREATE TABLE Categories (
    categoryID INT PRIMARY KEY,
    categoryName VARCHAR(50) NOT NULL
);
GO

CREATE TABLE Websites (
    websiteID INT PRIMARY KEY,
    websiteName VARCHAR(100) NOT NULL,
    websiteURL VARCHAR(255) NOT NULL,
    categoryID INT,

    FOREIGN KEY (categoryID) REFERENCES Categories(categoryID)
);
GO

CREATE TABLE Accounts (
  accountID INT PRIMARY KEY,
  userID INT NOT NULL,
  websiteID INT NOT NULL,
  loginEmail VARCHAR(100) NOT NULL,
  createdAt DATE,

FOREIGN KEY (userID) REFERENCES Users(userID),
FOREIGN KEY (websiteID) REFERENCES Websites(websiteID),
CONSTRAINT UQ_Account UNIQUE (userID, websiteID, loginEmail)
);
GO

CREATE TABLE Passwords (
    passwordID INT PRIMARY KEY,
    accountID INT UNIQUE NOT NULL,
    encryptedPassword VARCHAR(255) NOT NULL,
    lastUpdated DATE,

    FOREIGN KEY (accountID) REFERENCES Accounts(accountID)
);
GO
 

CREATE TABLE Notes (
    noteID INT PRIMARY KEY,
    userID INT NOT NULL,
    noteTitle VARCHAR(100) NOT NULL,
    noteContent VARCHAR(MAX),
    createdAt DATE,

    FOREIGN KEY (userID) REFERENCES Users(userID)
);
GO

CREATE TABLE Devices (
    deviceID INT PRIMARY KEY,
    userID INT NOT NULL,
    deviceName VARCHAR(100),
    operatingSystem VARCHAR(50),
    lastLogin DATETIME,

    FOREIGN KEY (userID) REFERENCES Users(userID)
);
GO

CREATE TABLE LoginHistory (
    loginID INT PRIMARY KEY,
    userID INT NOT NULL,
    loginDate DATETIME,
    ipAddress VARCHAR(50),

    FOREIGN KEY (userID) REFERENCES Users(userID)
);
GO

CREATE TABLE AccessLogs (
    logID INT PRIMARY KEY,
    userID INT NOT NULL,
    actionType VARCHAR(255) NOT NULL,
    actionTime DATETIME,

FOREIGN KEY (userID) REFERENCES Users(userID),
CONSTRAINT CHK_ActionType CHECK (actionType IN ('LOGIN', 'LOGOUT',
'PASSWORD_CREATE', 'PASSWORD_UPDATE', 'PASSWORD_VIEW', 'NOTE_CREATE', 'NOTE_DELETE'))
);
GO

CREATE TABLE SecurityQuestions (
    questionID INT PRIMARY KEY,
    userID INT NOT NULL,
    question VARCHAR(255),
    answer VARCHAR(255),

    FOREIGN KEY (userID) REFERENCES Users(userID)
);
GO
