### The Question (Simple Query & Filtering):
- Please write a query to find all users whose account creation date (createdAt) is after May 5th, 2025.
```sql
SELECT userID, username 
FROM Users
WHERE createdAt > '2025-05-05';
```

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

### The Question (GROUP BY):
- I want to count how many logs each user has. Show me the userID and the total count of their logs from the AccessLogs table.
```sql
SELECT userID, COUNT(logID) AS TotalLogs
FROM AccessLogs
GROUP BY userID;
```

### The Question (HAVING):
- Show me ONLY the users who have a total count of 2 or more logs.
```sql
SELECT userID, COUNT(logID) AS TotalLogs
FROM AccessLogs
GROUP BY userID
HAVING COUNT(logID) >= 2;
```
