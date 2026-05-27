
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
HAVING COUNT(logID) >= 2;


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


CREATE VIEW HighRiskBankingProfiles AS
SELECT loginEmail FROM Accounts WHERE websiteID = 3
INTERSECT
SELECT loginEmail FROM Accounts WHERE websiteID = 5;
GO
-- To run live during the presentation demo:
SELECT * FROM HighRiskBankingProfiles;
