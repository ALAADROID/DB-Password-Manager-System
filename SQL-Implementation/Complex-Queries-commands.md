
## Simple Queries (7 Queries):

### 1️⃣ Multi-Table Join:
<details>
  <summary>Show Code</summary>  <br>

  ```sql    
SELECT U.username, W.websiteName, A.loginEmail, W.websiteURL
FROM Users U
JOIN Accounts A ON U.userID = A.userID
JOIN Websites W ON A.websiteID = W.websiteID;
  ```
 </details>  
 
 > Compile a master credential manifest showing which user account owns which specific login email across different websites.

### 2️⃣ Aggregation + GROUP BY:
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

> Find out which websites are most widely used by counting the total number of accounts registered under each site.

### 3️⃣ HAVING Clause:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT userID, COUNT(logID) AS SensitiveActionsCount
FROM AccessLogs
WHERE actionType IN ('PASSWORD_VIEW', 'PASSWORD_UPDATE')
GROUP BY userID
HAVING COUNT(logID) > 2;
  ```
 </details>

> Generate a security audit flag to catch accounts performing heavy sensitive interactions (Views/Updates) within the platform logs.

### 4️⃣ Subquery:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT accountID, loginEmail 
FROM Accounts
WHERE accountID NOT IN (
    SELECT accountID 
    FROM Passwords
);
  ```
 </details>

 > Audit the vault to find any orphan account links that currently do not possess an associated entry in the Passwords table.

### 5️⃣ Complex 3-Table Join + Aggregation:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT U.username, C.categoryName, COUNT(A.accountID) AS SecureAccountsCount
FROM Users U
JOIN Accounts A ON U.userID = A.userID
JOIN Websites W ON A.websiteID = W.websiteID
JOIN Categories C ON W.categoryID = C.categoryID
WHERE C.categoryName IN ('Banking', 'Social Media')
GROUP BY U.username, C.categoryName;
  ```
 </details>

 > Calculate how many secure credentials each unique user profile has stored strictly under 'Banking' or 'Social Media' industries.
