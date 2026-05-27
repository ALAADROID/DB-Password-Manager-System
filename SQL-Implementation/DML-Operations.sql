-- 1. [INSERT] A new user joins the platform and sets up their master profile.
INSERT INTO Users (userID, username, email, masterPassword, createdAt) 
VALUES (11, 'Khaled', 'khaled@gmail.com', 'masterKey999', '2026-05-22');

-- 2. [INSERT] User 'Alaa' (userID 1) adds a new secure note to store his server SSH keys.
INSERT INTO Notes (noteID, userID, noteTitle, noteContent, createdAt) 
VALUES (11, 1, 'GitHub SSH Keys', 'ssh-rsa AAAAB3NzaC1yc2E...', '2026-05-22');

-- 3. [INSERT] Log a new password creation event in the system logs for security tracking.
INSERT INTO AccessLogs (logID, userID, actionType, actionTime) 
VALUES (11, 1, 'PASSWORD_CREATE', '2026-05-22 14:00:00');

-- 4. [INSERT] Register a secondary backup device for user 2 to track account access points.
INSERT INTO Devices (deviceID, userID, deviceName, operatingSystem, lastLogin)
VALUES (11, 2, 'iPad Air', 'iPadOS', '2026-05-22 15:30:00');

-- 5. [UPDATE] User 'Naji' (userID 2) updates his master password to maintain strong credential security.
UPDATE Users 
SET masterPassword = 'secureNewPass2026' 
WHERE userID = 2;

-- 6. [UPDATE] An administrator processes global domain infrastructure routing adjustments. Update Twitter records dynamically using SQL Pattern Matching (LIKE).
UPDATE Websites 
SET websiteURL = 'https://x.com', 
  websiteName = 'X (Twitter)' 
WHERE websiteURL LIKE '%twitter.com%';

-- 7. [UPDATE] User 'Jibreel' transitions his banking credentials to a secure workspace address. Discover and update his row dynamically via nested lookup structures.
UPDATE Accounts 
SET loginEmail = 'jibreel_corp@bank.com' 
WHERE userID = (SELECT userID FROM Users WHERE username = 'Jibreel')
AND websiteID = (SELECT websiteID FROM Websites WHERE websiteName = 'Akbank');

-- 8. [UPDATE] Enforce corporate governance password lifecycle intervals by refreshing stale parameters to current time frameworks.
UPDATE Passwords 
SET lastUpdated = '2026-05-22'
WHERE lastUpdated IN (SELECT lastUpdated FROM Passwords WHERE lastUpdated < '2025-05-15');

-- 9. [DELETE] Purge corrupted hardware link registrations belonging to user clusters utilizing nested relational logic filters.
DELETE FROM Devices 
WHERE userID = (SELECT userID FROM Users WHERE username = 'Mustafa') 
AND operatingSystem = 'Windows 10';

-- 10. [DELETE] A user purges a compromised vault item entry from their dashboard.
DELETE FROM Passwords 
WHERE accountID = 10;

-- 11. [ALTER] Evolve the system physical schema layout dynamically by adding an encryption status bit flag column to the Devices table.
ALTER TABLE Devices ADD isEncrypted INT DEFAULT 1;

-- 12. [DROP] Execute security compliance cleanups by removing a testing configuration metadata view schema boundary layout safely.
-- Creating a view to instantly drop it for demonstration of schema management commands
CREATE VIEW TemporaryTestingView AS SELECT username FROM Users;
GO
DROP VIEW TemporaryTestingView;
GO
