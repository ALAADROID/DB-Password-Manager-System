## Simple Queries (7 Queries):

### 1️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql    
SELECT categoryName 
FROM Categories 
ORDER BY categoryName ASC;
  ```
 </details>  
 
 > List all configured website categories in alphabetical order.

### 2️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT deviceName, userID, lastLogin 
FROM Devices 
WHERE operatingSystem = 'Windows 11';
  ```
 </details>

> Identify all recorded user hardware devices currently running on the 'Windows 11' operating system.

### 3️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT websiteName, websiteURL 
FROM Websites 
WHERE categoryID = 4;
  ```
 </details>

> Retrieve all tracked websites that fall specifically within the 'Shopping' category (categoryID = 4).

### 4️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT noteTitle, noteContent 
FROM Notes 
WHERE noteTitle LIKE '%Password%';
  ```
 </details>

 > Search the vault for any secure notes that contain the keyword 'Password' in their header title.

### 5️⃣ UPDATE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT TOP 5 loginID, userID, loginDate, ipAddress 
FROM LoginHistory 
ORDER BY loginDate DESC;
  ```
 </details>

 > Fetch the top 5 most recent master system login attempts to audit active session entries.

### 6️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT username, email, createdAt 
FROM Users 
WHERE createdAt > '2025-05-05';
  ```
 </details>

 > Extract a list of all registered users who joined the service after '2025-05-05'.

### 7️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT logID, userID, actionTime 
FROM AccessLogs 
WHERE actionType = 'PASSWORD_VIEW';
  ```
 </details>

 > Display all security tracking logs where the operational action was strictly a 'PASSWORD_VIEW' event.



