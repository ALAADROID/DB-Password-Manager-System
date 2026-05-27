
## Simple Queries (7 Queries):

### 1️⃣ EXPLICIT JOIN:
<details>
  <summary>Show Code</summary>  <br>

  ```sql    
SELECT U.username, W.websiteName, A.loginEmail, W.websiteURL
FROM Users U
JOIN Accounts A ON U.userID = A.userID
JOIN Websites W ON A.websiteID = W.websiteID;
  ```
 </details>  
 
 > Construct a global lookup grid intersecting cross-table records to compile a master user access manifest.

### 2️⃣ GROUP BY & AGGREGATE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT W.websiteName, COUNT(A.accountID) AS TotalStoredAccounts
FROM Websites W
JOIN Accounts A ON W.websiteID = A.websiteID
GROUP BY W.websiteName
ORDER BY TotalStoredAccounts DESC;
  ```
 </details>

> Evaluate database asset concentration metrics by summarizing total stored profiles allocated to active website target nodes.

### 3️⃣ HAVING COMPLEX AUDIT:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT userID, COUNT(logID) AS SensitiveActionsCount
FROM AccessLogs
WHERE actionType IN ('PASSWORD_VIEW', 'PASSWORD_UPDATE')
GROUP BY userID
HAVING COUNT(logID) >= 2;
  ```
 </details>

> Detect anomaly profiles executing high frequencies of sensitive vault lookups (PASSWORD_VIEW or PASSWORD_UPDATE) to catch threat behaviors.

### 4️⃣ WITH CLAUSE & SUBQUERY IN FROM:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
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
  ```
 </details>

 > Construct an isolated transient execution matrix using common table expressions to evaluate regional user logging operations compared with baseline metrics.

### 5️⃣ SET OPERATIONS & VIEW DECLARATION:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE VIEW HighRiskBankingProfiles AS
SELECT loginEmail FROM Accounts WHERE websiteID = 3
INTERSECT
SELECT loginEmail FROM Accounts WHERE websiteID = 5;
GO

-- To run live during the presentation demo:
SELECT * FROM HighRiskBankingProfiles;
  ```
 </details>

 > Create an operational view exposing accounts utilizing overlapping administrative email footprints across corporate banking directories via intercept operations.
