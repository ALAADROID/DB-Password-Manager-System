SELECT categoryName 
FROM Categories 
ORDER BY categoryName ASC;

SELECT deviceName, userID, lastLogin 
FROM Devices 
WHERE operatingSystem = 'Windows 11';

SELECT websiteName, websiteURL 
FROM Websites 
WHERE categoryID = 4;

SELECT noteTitle, noteContent 
FROM Notes 
WHERE noteTitle LIKE '%Password%';

SELECT TOP 5 loginID, userID, loginDate, ipAddress 
FROM LoginHistory 
ORDER BY loginDate DESC;

SELECT username, email, createdAt 
FROM Users 
WHERE createdAt > '2025-05-05';

SELECT logID, userID, actionTime 
FROM AccessLogs 
WHERE actionType = 'PASSWORD_VIEW';
