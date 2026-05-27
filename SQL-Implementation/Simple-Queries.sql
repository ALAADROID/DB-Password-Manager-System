SELECT categoryName 
FROM Categories 
ORDER BY categoryName ASC;


SELECT deviceName, userID, lastLogin 
FROM Devices 
WHERE operatingSystem LIKE 'Windows%' 
AND lastLogin BETWEEN '2025-05-01' AND '2025-05-31 23:59:59';


SELECT websiteName, websiteURL 
FROM Websites 
WHERE categoryID IN (4);


SELECT noteTitle, noteContent 
FROM Notes 
WHERE noteTitle LIKE '%Password%' 
 OR noteContent LIKE '%Key%' 
 OR noteContent LIKE '%Backup%';


SELECT username, email, createdAt
FROM Users
WHERE createdAt > '2025-05-05';


SELECT logID, userID, actionTime
FROM AccessLogs
WHERE actionType = 'PASSWORD_VIEW';


SELECT accountID, loginEmail, createdAt 
FROM Accounts 
WHERE accountID NOT IN (SELECT accountID FROM Passwords);
