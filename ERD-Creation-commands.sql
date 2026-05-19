CREATE TABLE `Users` (
  `userID` INT PRIMARY KEY,
  `username` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) UNIQUE NOT NULL,
  `masterPassword` VARCHAR(255) NOT NULL,
  `createdAt` DATE
);

CREATE TABLE `Categories` (
  `categoryID` INT PRIMARY KEY,
  `categoryName` VARCHAR(50) NOT NULL
);

CREATE TABLE `Websites` (
  `websiteID` INT PRIMARY KEY,
  `websiteName` VARCHAR(100) NOT NULL,
  `websiteURL` VARCHAR(255),
  `categoryID` INT
);

CREATE TABLE `Accounts` (
  `accountID` INT PRIMARY KEY,
  `userID` INT,
  `websiteID` INT,
  `loginEmail` VARCHAR(100),
  `createdAt` DATE
);

CREATE TABLE `Passwords` (
  `passwordID` INT PRIMARY KEY,
  `accountID` INT UNIQUE,
  `encryptedPassword` VARCHAR(255) NOT NULL,
  `lastUpdated` DATE
);

CREATE TABLE `Notes` (
  `noteID` INT PRIMARY KEY,
  `userID` INT,
  `noteTitle` VARCHAR(100),
  `noteContent` TEXT,
  `createdAt` DATE
);

CREATE TABLE `Devices` (
  `deviceID` INT PRIMARY KEY,
  `userID` INT,
  `deviceName` VARCHAR(100),
  `operatingSystem` VARCHAR(50),
  `lastLogin` DATETIME
);

CREATE TABLE `LoginHistory` (
  `loginID` INT PRIMARY KEY,
  `userID` INT,
  `loginDate` DATETIME,
  `ipAddress` VARCHAR(50)
);

CREATE TABLE `AccessLogs` (
  `logID` INT PRIMARY KEY,
  `userID` INT,
  `actionType` VARCHAR(255),
  `actionTime` DATETIME
);

CREATE TABLE `SecurityQuestions` (
  `questionID` INT PRIMARY KEY,
  `userID` INT,
  `question` VARCHAR(255),
  `answer` VARCHAR(255)
);

CREATE UNIQUE INDEX `Accounts_index_0` ON `Accounts` (`userID`, `websiteID`, `loginEmail`);

ALTER TABLE `Websites` ADD FOREIGN KEY (`categoryID`) REFERENCES `Categories` (`categoryID`);

ALTER TABLE `Accounts` ADD FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`);

ALTER TABLE `Accounts` ADD FOREIGN KEY (`websiteID`) REFERENCES `Websites` (`websiteID`);

ALTER TABLE `Passwords` ADD FOREIGN KEY (`accountID`) REFERENCES `Accounts` (`accountID`);

ALTER TABLE `Notes` ADD FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`);

ALTER TABLE `Devices` ADD FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`);

ALTER TABLE `LoginHistory` ADD FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`);

ALTER TABLE `AccessLogs` ADD FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`);

ALTER TABLE `SecurityQuestions` ADD FOREIGN KEY (`userID`) REFERENCES `Users` (`userID`);
