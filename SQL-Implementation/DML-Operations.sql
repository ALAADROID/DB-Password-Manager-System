-- 1. [INSERT] Business Question: A new user joins the platform and sets up their master account.
INSERT INTO Users (userID, username, email, masterPassword, createdAt) 
VALUES (11, 'Khaled', 'khaled@gmail.com', 'masterKey999', '2026-05-22');

-- 2. [INSERT] Business Question: User 'Alaa' (userID 1) adds a new social media category notebook entry.
INSERT INTO Notes (noteID, userID, noteTitle, noteContent, createdAt) 
VALUES (11, 1, 'GitHub SSH Keys', 'ssh-rsa AAAAB3NzaC1yc2E...', '2026-05-22');

-- 3. [INSERT] Business Question: Track a new password update event in the logs for audit purposes.
INSERT INTO AccessLogs (logID, userID, actionType, actionTime) 
VALUES (11, 1, 'PASSWORD_UPDATE', '2026-05-22 14:00:00');

-- 4. [UPDATE] Business Question: User 'Naji' (userID 2) decides to upgrade and change his master password for security.
UPDATE Users 
SET masterPassword = 'secureNewPass2026' 
WHERE userID = 2;

-- 5. [UPDATE] Business Question: An app update requires changing the URL format for Twitter to its new branding 'x.com'.
UPDATE Websites 
SET websiteURL = 'https://x.com' 
WHERE websiteName = 'Twitter';

-- 6. [UPDATE] Business Question: User 'Jibreel' updates his stored banking login email to a corporate address.
UPDATE Accounts 
SET loginEmail = 'jibreel_corp@bank.com' 
WHERE accountID = 5;

-- 7. [UPDATE] Business Question: A user changes their account credentials, triggering an update on the password modification date tracker.
UPDATE Passwords 
SET lastUpdated = '2026-05-22' 
WHERE accountID = 1;

-- 8. [DELETE] Business Question: User 'Mustafa' (userID 6) removes an old device from his trusted devices list.
DELETE FROM Devices 
WHERE deviceID = 6 AND userID = 6;

-- 9. [DELETE] Business Question: A user deletes a compromised password entry from their dashboard.
DELETE FROM Passwords 
WHERE accountID = 10;

-- 10. [DELETE] Business Question: System maintenance script purges old login history entries from early May to save storage space.
DELETE FROM LoginHistory 
WHERE loginDate < '2025-05-02 00:00:00';
