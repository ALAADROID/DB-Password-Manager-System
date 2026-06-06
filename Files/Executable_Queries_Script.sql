-- DML Operations commands

-- Q1: How can we register a new user named 'Khaled' into the system?
 INSERT INTO Users (userID, username, email, masterPassword, createdAt) 
 VALUES (11, 'Khaled', 'khaled@gmail.com', 'masterKey999', '2026-05-22');

-- Q2: How can user Alaa (userID = 1) store a secure personal note regarding his GitHub SSH Keys?
 INSERT INTO Notes (noteID, userID, noteTitle, noteContent, createdAt) 
 VALUES (11, 1, 'GitHub SSH Keys', 'ssh-rsa AAAAB3NzaC1yc2E...', '2026-05-22');

-- Q3: How does the system automatically audit and log a new 'PASSWORD_CREATE' transaction event for user 1?
INSERT INTO AccessLogs (logID, userID, actionType, actionTime) 
VALUES (11, 1, 'PASSWORD_CREATE', '2026-05-22 14:00:00');

-- Q4: How can the system register a secondary device profile ('iPad Air') for verification under user 2?
 INSERT INTO Devices (deviceID, userID, deviceName, operatingSystem, lastLogin)
 VALUES (11, 2, 'iPad Air', 'iPadOS', '2026-05-22 15:30:00');

-- Q5: How can a user named 'Naji' dynamically update his master password secret to 'secureNewPass2026' to maintain account security?
 UPDATE Users 
 SET masterPassword = 'secureNewPass2026' 
 WHERE username = 'Naji';

-- Q6: How can the administrator bulk-update all 'Twitter' website URL’s to 'X (Twitter)' and update the URL using pattern matching?
 UPDATE Websites 
 SET websiteURL = 'https://x.com', 
    websiteName = 'X (Twitter)' 
 WHERE websiteURL LIKE '%twitter.com%';

-- Q7: How can user 'Jibreel' update his login email specifically for his 'Akbank' credential record?
 UPDATE Accounts 
 SET loginEmail = 'jibreel_corp@bank.com' 
 WHERE userID = (SELECT userID FROM Users WHERE username = 'Jibreel')
 AND websiteID = (SELECT websiteID FROM Websites WHERE websiteName = 'Akbank');

-- Q8: How can the administrator log a mandatory security baseline compliance update for all passwords not modified since 15-5-2025?
 UPDATE Passwords 
 SET lastUpdated = '2026-05-22'
 WHERE lastUpdated < '2025-05-15';

-- Q9: How can the system completely delete a 'Windows 10' hardware endpoint profile belonging to user 'Mustafa'?
 DELETE FROM Devices 
 WHERE userID = (SELECT userID FROM Users WHERE username = 'Mustafa') 
 AND operatingSystem = 'Windows 10';
 
-- Q10: How can a user completely remove a compromised password record from their dashboard using its account ID reference?
 DELETE FROM Passwords 
 WHERE accountID = 10;

-- Q11: How can we dynamically evolve our device database schema by adding a new status flag column for encryption tracking?
 ALTER TABLE Devices ADD isEncrypted INT DEFAULT 1;

-- Q12: How can an administrator demonstrate safe environment management by creating a temporary schema view and instantly dropping it?
-- Creating a view to instantly drop it for demonstration of schema management commands
 GO
 CREATE VIEW TemporaryTestingView AS SELECT username FROM Users;
 GO
 DROP VIEW TemporaryTestingView;
 GO


-- Simple Queries commands

-- Q1: How can the system retrieve a complete directory of all available platform categories arranged in alphabetical order?
 SELECT categoryName 
 FROM Categories 
 ORDER BY categoryName ASC;

-- Q2: Which Windows devices logged into the system during the month of May 2025?
 SELECT deviceName, userID, lastLogin 
 FROM Devices 
 WHERE operatingSystem LIKE 'Windows%' 
 AND lastLogin BETWEEN '2025-05-01' AND '2025-05-31 23:59:59';

-- Q3: What are the website name and website URL where category ID is 4?
 SELECT websiteName, websiteURL 
 FROM Websites 
 WHERE categoryID IN (4);

-- Q4: How can we search note title and note content from Notes that contain 'Password', 'Key', or 'Backup'?
 SELECT noteTitle, noteContent 
 FROM Notes 
 WHERE noteTitle LIKE '%Password%' 
  OR noteContent LIKE '%Key%' 
  OR noteContent LIKE '%Backup%';

-- Q5: Which users have a createdAt date after '2025-05-05'?
 SELECT username, email, createdAt
 FROM Users
 WHERE createdAt > '2025-05-05';

-- Q6: How can we select logID, userID, and actionTime from AccessLogs where actionType is 'PASSWORD_VIEW'?
 SELECT logID, userID, actionTime
 FROM AccessLogs
 WHERE actionType = 'PASSWORD_VIEW';
 

-- Q7: Which accounts created but do not have a password record linked to them yet?
 SELECT accountID, loginEmail, createdAt 
 FROM Accounts 
 WHERE accountID NOT IN (SELECT accountID FROM Passwords);


-- Complex Queries commands

-- Q1: How can we generate a comprehensive master manifest showing which websites and specific login emails each system user is tracking?
 SELECT U.username, W.websiteName, A.loginEmail, W.websiteURL
 FROM Users U
 JOIN Accounts A ON U.userID = A.userID
 JOIN Websites W ON A.websiteID = W.websiteID;

-- Q2: How can we select websiteName and count accountID from Websites and Accounts grouped by websiteName, sorted from highest to lowest?
 SELECT W.websiteName, COUNT(A.accountID) AS TotalStoredAccounts
 FROM Websites W
 JOIN Accounts A ON W.websiteID = A.websiteID
 GROUP BY W.websiteName
 ORDER BY TotalStoredAccounts DESC;

-- Q3: How can we select userID and count logID from AccessLogs where actionType is 'PASSWORD_VIEW' or 'PASSWORD_UPDATE', having a count of 2 or more?
 SELECT userID, COUNT(logID) AS SensitiveActionsCount
 FROM AccessLogs
 WHERE actionType IN ('PASSWORD_VIEW', 'PASSWORD_UPDATE')
 GROUP BY userID
 HAVING COUNT(logID) >= 2;

-- Q4: How can we use a WITH clause (CTE) to find userIDs whose total logID count is greater than the average logs of all users?
 WITH UserLogCount AS (
   SELECT userID, COUNT(logID) AS UserLogs 
   FROM AccessLogs 
   GROUP BY userID
 )
 SELECT SummaryTable.userID, SummaryTable.UserLogs
 FROM (
   SELECT userID, UserLogs 
   FROM UserLogCount
 ) AS SummaryTable
 WHERE SummaryTable.UserLogs > (SELECT AVG(UserLogs) FROM UserLogCount);

-- Q5: How can we create a VIEW that uses INTERSECT to find loginEmails used in both websiteID 3 and websiteID 5?
 CREATE VIEW HighRiskBankingProfiles AS
 SELECT loginEmail FROM Accounts WHERE websiteID = 3
 INTERSECT
 SELECT loginEmail FROM Accounts WHERE websiteID = 5;
 GO

 -- To run it:
 SELECT * FROM HighRiskBankingProfiles;
