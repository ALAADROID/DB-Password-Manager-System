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
WHERE operatingSystem LIKE 'Windows%' 
  AND lastLogin BETWEEN '2025-05-01' AND '2025-05-31 23:59:59';
  ```
 </details>

> Isolate active workstations interacting with the engine database running on Windows systems within structural time bounds.

### 3️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT websiteName, websiteURL 
FROM Websites 
WHERE categoryID IN (4);
  ```
 </details>

> Group administrative resource domain locators cataloged under specific shopping sectors using predicate set arrays.

### 4️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT noteTitle, noteContent 
FROM Notes 
WHERE noteTitle LIKE '%Password%' 
   OR noteContent LIKE '%Key%' 
   OR noteContent LIKE '%Backup%';
  ```
 </details>

 > Perform a deep scanning pass over text blocks to pull records with sensitive administrative references.

### 5️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT username, email, createdAt
FROM Users
WHERE createdAt > '2025-05-05';
  ```
 </details>

 > Isolate system users registered after early startup benchmarks using absolute date predicate criteria.

### 6️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT logID, userID, actionTime
FROM AccessLogs
WHERE actionType = 'PASSWORD_VIEW';
  ```
 </details>

 > Generate a security exceptions audit trail tracking only high-profile password extraction events.

### 7️⃣:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
SELECT accountID, loginEmail, createdAt 
FROM Accounts 
WHERE accountID NOT IN (SELECT accountID FROM Passwords);
  ```
 </details>

 > Execute an operational audit scanning for account profiles currently sitting vacant without any associated security string profiles.



