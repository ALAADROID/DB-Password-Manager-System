## DML Operations (10 Statements):

### 1️⃣ INSERT:
<details>
  <summary>Show Code</summary>  <br>

  ```sql    
INSERT INTO Users (userID, username, email, masterPassword, createdAt) 
VALUES (11, 'Khaled', 'khaled@gmail.com', 'masterKey999', '2026-05-22');
  ```
 </details>  
 
 > A new user joins the platform and sets up their master profile.

### 2️⃣ INSERT:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO Notes (noteID, userID, noteTitle, noteContent, createdAt) 
VALUES (11, 1, 'GitHub SSH Keys', 'ssh-rsa AAAAB3NzaC1yc2E...', '2026-05-22');
  ```
 </details>

> User 'Alaa' (userID 1) adds a new secure note to store his server SSH keys.

### 3️⃣ INSERT:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO AccessLogs (logID, userID, actionType, actionTime) 
VALUES (11, 1, 'PASSWORD_CREATE', '2026-05-22 14:00:00');
  ```
 </details>

> Log a new password creation event in the system logs for security tracking.

### 4️⃣ INSERT:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO Devices (deviceID, userID, deviceName, operatingSystem, lastLogin)
VALUES (11, 2, 'iPad Air', 'iPadOS', '2026-05-22 15:30:00');
  ```
 </details>

 > Register a secondary backup device for user 2 to track account access points.

### 5️⃣ UPDATE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
UPDATE Users 
SET masterPassword = 'secureNewPass2026' 
WHERE userID = 2;
  ```
 </details>

 > User 'Naji' (userID 2) updates his master password to maintain strong credential security.

### 6️⃣ UPDATE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
UPDATE Websites 
SET websiteURL = 'https://x.com',
    websiteName = 'X'  
WHERE websiteName = 'Twitter';
  ```
 </details>

 > An administrator updates the structural URL of Twitter to reflect its modern 'x.com' domain.

### 7️⃣ UPDATE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
UPDATE Accounts 
SET loginEmail = 'jibreel_corp@bank.com' 
WHERE accountID = 5;
  ```
 </details>

 > User 'Jibreel' updates his stored banking account login email to his corporate address.

### 8️⃣ UPDATE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
UPDATE Passwords 
SET lastUpdated = '2026-05-22' 
WHERE accountID = 1;
  ```
 </details>

 > Refresh the password lifecycle timestamp when an entry's encrypted string is updated.

 
### 9️⃣ DELETE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
DELETE FROM Devices 
WHERE deviceID = 6 AND userID = 6;
  ```
 </details>

 > User 'Mustafa' (userID 6) removes an old, unlinked mobile device from his profile.
 
### 🔟 DELETE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
DELETE FROM Passwords 
WHERE accountID = 10;
  ```
 </details>

 > A user purges a compromised vault item entry from their dashboard.

### 1️⃣1️⃣ DELETE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
DELETE FROM LoginHistory 
WHERE loginDate < '2025-05-02 00:00:00';
  ```
 </details>

 > Clean up old login history sessions from early May 2025 to optimize space.

### 1️⃣2️⃣ DELETE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
DELETE FROM Categories 
WHERE categoryID = 5;
  ```
 </details>
 
> Remove a customized category that is no longer being utilized by any system website.







