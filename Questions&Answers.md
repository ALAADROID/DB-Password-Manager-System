### The Question (Simple Query & Filtering):
- Please write a query to find all users whose account creation date (createdAt) is after May 5th, 2025.
```sql
SELECT userID, username 
FROM Users
WHERE createdAt > '2025-05-05';
```

<br>

### The Question (Multi-Join & Aliases):
- I want to see a list of usernames, and next to each user, show the name of the website they have an account on.
```sql
SELECT U.username, W.websiteName
FROM Users U
JOIN Accounts A ON U.userID = A.userID
JOIN Websites W ON W.websiteID = A.websiteID;
```
> OR without shortcuts:
```sql
SELECT Users.username, Websites.websiteName
FROM Users
JOIN Accounts ON U.userID = Accounts.userID
JOIN Websites ON Wwebsites.websiteID = Accounts.websiteID;
```

<br>

### The Question (GROUP BY):
- I want to count how many logs each user has. Show me the userID and the total count of their logs from the AccessLogs table.
```sql
SELECT userID, COUNT(logID) AS TotalLogs
FROM AccessLogs
GROUP BY userID;
```

<br>

### The Question (HAVING):
- Show me ONLY the users who have a total count of 2 or more logs.
```sql
SELECT userID, COUNT(logID) AS TotalLogs
FROM AccessLogs
GROUP BY userID
HAVING COUNT(logID) >= 2;
```

<br>

### The Question (LIKE, OR):
- I want to find all websites where the URL either contains the word 'google' OR contains the word 'crypto'. Show me the websiteName and the websiteURL.
```sql
SELECT websiteName, websiteURL
FROM Websites
WHERE websiteURL LIKE '%google%' 
   OR websiteURL LIKE '%crypto%';
```

<br>

### The Question (AND):
- We noticed a typo in our database. The user with userID = 1 changed their login email for their account on 'Google'. I want you to UPDATE their loginEmail in the Accounts table to be 'alaa.droid@gmail.com'. But wait, you must make sure you only update the account where websiteID = 3 (which is Google's ID)."websiteURL.
```sql
UPDATE Accounts
SET loginEmail = 'alaa.droid@gmail.com'
WHERE userID = 1 AND websiteID = 3;
```

<br>

### The Question (AND):
- We noticed a typo in our database. The user with userID = 1 changed their login email for their account on 'Google'. I want you to UPDATE their loginEmail in the Accounts table to be 'alaa.droid@gmail.com'. But wait, you must make sure you only update the account where websiteID = 3 (which is Google's ID)."websiteURL.
```sql
UPDATE Accounts
SET loginEmail = 'alaa.droid@gmail.com'
WHERE userID = 1 AND websiteID = 3;
```

<br>

### The Question (TOP, ORDER BY):
- I want to see the top 3 oldest accounts created in our system. Show me the accountID, userID, and createdAt from the Accounts table, and make sure the oldest one appears first.
```sql
select top 3 accountID, userID, createdAt
from Accounts
order by createdAt asc;
```

