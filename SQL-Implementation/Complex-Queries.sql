
SELECT U.username, W.websiteName, A.loginEmail, W.websiteURL
FROM Users U
JOIN Accounts A ON U.userID = A.userID
JOIN Websites W ON A.websiteID = W.websiteID;


SELECT W.websiteName, COUNT(A.accountID) AS TotalStoredAccounts
FROM Websites W
JOIN Accounts A ON W.websiteID = A.websiteID
GROUP BY W.websiteName
ORDER BY TotalStoredAccounts DESC;


SELECT userID, COUNT(logID) AS SensitiveActionsCount
FROM AccessLogs
WHERE actionType IN ('PASSWORD_VIEW', 'PASSWORD_UPDATE')
GROUP BY userID
HAVING COUNT(logID) > 2;


SELECT accountID, loginEmail 
FROM Accounts
WHERE accountID NOT IN (
    SELECT accountID 
    FROM Passwords
);


SELECT U.username, C.categoryName, COUNT(A.accountID) AS SecureAccountsCount
FROM Users U
JOIN Accounts A ON U.userID = A.userID
JOIN Websites W ON A.websiteID = W.websiteID
JOIN Categories C ON W.categoryID = C.categoryID
WHERE C.categoryName IN ('Banking', 'Social Media')
GROUP BY U.username, C.categoryName;
