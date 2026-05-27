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

-- 6. [UPDATE] An administrator updates the structural URL of Twitter to reflect its modern 'x.com' domain.
UPDATE Websites 
SET websiteURL = 'https://x.com',
    websiteName = 'X'  
WHERE websiteName = 'Twitter';

-- 7. [UPDATE] User 'Jibreel' updates his stored banking account login email to his corporate address.
UPDATE Accounts 
SET loginEmail = 'jibreel_corp@bank.com' 
WHERE accountID = 5;

-- 8. [UPDATE] Refresh the password lifecycle timestamp when an entry's encrypted string is updated.
UPDATE Passwords 
SET lastUpdated = '2026-05-22' 
WHERE accountID = 1;

-- 9. [DELETE] User 'Mustafa' (userID 6) removes an old, unlinked mobile device from his profile.
DELETE FROM Devices 
WHERE deviceID = 6 AND userID = 6;

-- 10. [DELETE] A user purges a compromised vault item entry from their dashboard.
DELETE FROM Passwords 
WHERE accountID = 10;

-- 11. [DELETE] Clean up old login history sessions from early May 2025 to optimize space.
DELETE FROM LoginHistory 
WHERE loginDate < '2025-05-02 00:00:00';

-- 12. [DELETE] Remove a customized category that is no longer being utilized by any system website.
DELETE FROM Categories 
WHERE categoryID = 5;
