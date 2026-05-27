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
    websiteName = 'X (Twitter)' 
WHERE websiteURL LIKE '%twitter.com%';
  ```
 </details>

 > An administrator processes global domain infrastructure routing adjustments. Update Twitter records dynamically using SQL Pattern Matching (LIKE).

### 7️⃣ UPDATE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
UPDATE Accounts 
SET loginEmail = 'jibreel_corp@bank.com' 
WHERE userID = (SELECT userID FROM Users WHERE username = 'Jibreel')
  AND websiteID = (SELECT websiteID FROM Websites WHERE websiteName = 'Akbank');
  ```
 </details>

 > User 'Jibreel' transitions his banking credentials to a secure workspace address. Discover and update his row dynamically via nested lookup structures.

### 8️⃣ UPDATE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
UPDATE Passwords 
SET lastUpdated = '2026-05-22'
WHERE lastUpdated IN (SELECT lastUpdated FROM Passwords WHERE lastUpdated < '2025-05-15');
  ```
 </details>

 > Enforce corporate governance password lifecycle intervals by refreshing stale parameters to current time frameworks.

 
### 9️⃣ DELETE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
DELETE FROM Devices 
WHERE userID = (SELECT userID FROM Users WHERE username = 'Mustafa') 
  AND operatingSystem = 'Windows 10';
  ```
 </details>

 > Purge corrupted hardware link registrations belonging to user clusters utilizing nested relational logic filters.
 
### 🔟 DELETE:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
DELETE FROM Passwords 
WHERE accountID = 10;
  ```
 </details>

 > A user purges a compromised vault item entry from their dashboard.

### 1️⃣1️⃣ ALTER:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
ALTER TABLE Devices ADD isEncrypted INT DEFAULT 1;
  ```
 </details>

 > Evolve the system physical schema layout dynamically by adding an encryption status bit flag column to the Devices table.

### 1️⃣2️⃣ DROP:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
-- Creating a view to instantly drop it for demonstration of schema management commands
CREATE VIEW TemporaryTestingView AS SELECT username FROM Users;
GO
DROP VIEW TemporaryTestingView;
GO
  ```
 </details>
 
> Execute security compliance cleanups by removing a testing configuration metadata view schema boundary layout safely.







