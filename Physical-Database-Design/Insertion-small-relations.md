## Small relations insertion:

### 1️⃣ Users:
<details>
  <summary>Show Code</summary>  <br>

  ```sql    
INSERT INTO Users (userID, username, email, masterPassword, createdAt) VALUES
(1, 'Alaa', 'alaa@gmail.com', 'encPass123', '2025-05-01'),
(2, 'Naji', 'naji@gmail.com', 'encPass456', '2025-05-02'),
(3, 'Jibreel', 'jibreel@gmail.com', 'encPass789', '2025-05-03'),
(4, 'Muhammad', 'muhammad@gmail.com', 'encPass321', '2025-05-04'),
(5, 'Ahmed', 'ahmed@gmail.com', 'encPass654', '2025-05-05'),
(6, 'Mustafa', 'mustafa@gmail.com', 'encPass147', '2025-05-06'),
(7, 'Ali', 'ali@gmail.com', 'encPass258', '2025-05-07'),
(8, 'Omar', 'omar@gmail.com', 'encPass369', '2025-05-08'),
(9, 'Yusuf', 'yusuf@gmail.com', 'encPass741', '2025-05-09'),
(10, 'Ibrahim', 'ibrahim@gmail.com', 'encPass852', '2025-05-10');
  ```
 </details>

### 2️⃣ Categories:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO Categories (categoryID, categoryName) VALUES
(1, 'Social Media'),
(2, 'Banking'),
(3, 'Education'),
(4, 'Shopping'),
(5, 'Entertainment');
  ```
 </details>

### 3️⃣ Websites:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO Websites (websiteID, websiteName, websiteURL, categoryID) VALUES
(1, 'Instagram', 'https://instagram.com', 1),
(2, 'Facebook', 'https://facebook.com', 1),
(3, 'Akbank', 'https://akbank.com', 2),
(4, 'Udemy', 'https://udemy.com', 3),
(5, 'Amazon', 'https://amazon.com', 4),
(6, 'Steam', 'https://store.steampowered.com', 5),
(7, 'YouTube', 'https://youtube.com', 5),
(8, 'Trendyol', 'https://trendyol.com', 4),
(9, 'Coursera', 'https://coursera.org', 3),
(10, 'Twitter', 'https://twitter.com', 1);
  ```
 </details>

### 4️⃣ Accounts:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO Accounts (accountID, userID, websiteID, loginEmail, createdAt) VALUES
(1, 1, 1, 'alaa_insta@gmail.com', '2025-05-01'),
(2, 1, 7, 'alaa_youtube@gmail.com', '2025-05-02'),
(3, 2, 2, 'naji_fb@gmail.com', '2025-05-03'),
(4, 2, 6, 'naji_steam@gmail.com', '2025-05-04'),
(5, 3, 3, 'jibreel_bank@gmail.com', '2025-05-05'),
(6, 4, 4, 'muhammad_udemy@gmail.com', '2025-05-06'),
(7, 5, 5, 'ahmed_amazon@gmail.com', '2025-05-07'),
(8, 6, 8, 'mustafa_trendyol@gmail.com', '2025-05-08'),
(9, 7, 10, 'ali_twitter@gmail.com', '2025-05-09'),
(10, 8, 1, 'omar_insta@gmail.com', '2025-05-10'),
(11, 8, 7, 'omar_youtube@gmail.com', '2025-05-11'),
(12, 9, 9, 'yusuf_course@gmail.com', '2025-05-12'),
(13, 10, 6, 'ibrahim_steam@gmail.com', '2025-05-13'),
(14, 3, 5, 'jibreel_shop@gmail.com', '2025-05-14'),
(15, 5, 3, 'ahmed_bank@gmail.com', '2025-05-15');
  ```
 </details>

### 5️⃣ Passwords:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO Passwords (passwordID, accountID, encryptedPassword, lastUpdated) VALUES
(1, 1, 'encInstagramA1', '2025-05-11'),
(2, 2, 'encYoutubeA2', '2025-05-12'),
(3, 3, 'encFacebookN1', '2025-05-13'),
(4, 4, 'encSteamN2', '2025-05-14'),
(5, 5, 'encAkbankJ1', '2025-05-15'),
(6, 6, 'encUdemyM1', '2025-05-16'),
(7, 7, 'encAmazonA1', '2025-05-17'),
(8, 8, 'encTrendyolM2', '2025-05-18'),
(9, 9, 'encTwitterA3', '2025-05-19'),
(10, 10, 'encInstagramO1', '2025-05-20'),
(11, 11, 'encYoutubeO2', '2025-05-21'),
(12, 12, 'encCourseY1', '2025-05-22'),
(13, 13, 'encSteamI1', '2025-05-23'),
(14, 14, 'encAmazonJ2', '2025-05-24'),
(15, 15, 'encAkbankA2', '2025-05-25');
  ```
 </details>

### 6️⃣ Notes:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO Notes (noteID, userID, noteTitle, noteContent, createdAt) VALUES
(1, 1, 'WiFi Password', 'Home WiFi password saved here', '2025-05-01'),
(2, 2, 'Bank Note', 'Important banking reminder', '2025-05-02'),
(3, 3, 'Work Account', 'Company credentials backup', '2025-05-03'),
(4, 4, 'Study Platforms', 'Udemy and Coursera accounts', '2025-05-04'),
(5, 5, 'Shopping Accounts', 'Amazon purchase details', '2025-05-05'),
(6, 6, 'Streaming Services', 'Netflix subscription note', '2025-05-06'),
(7, 7, 'Social Media', 'YouTube creator account', '2025-05-07'),
(8, 8, 'Security Tips', 'Use strong passwords', '2025-05-08'),
(9, 9, 'Backup Accounts', 'Emergency recovery emails', '2025-05-09'),
(10, 10, 'Private Notes', 'Personal password hints', '2025-05-10');
  ```
 </details>

### 7️⃣ Devices:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO Devices (deviceID, userID, deviceName, operatingSystem, lastLogin) VALUES
(1, 1, 'Galaxy A51', 'Android', '2025-05-11 10:00:00'),
(2, 2, 'iPhone 13', 'iOS', '2025-05-11 11:00:00'),
(3, 3, 'Lenovo ThinkPad', 'Windows 11', '2025-05-11 12:00:00'),
(4, 4, 'MacBook Air', 'macOS', '2025-05-11 13:00:00'),
(5, 5, 'Galaxy Tab S7', 'Android', '2025-05-11 14:00:00'),
(6, 6, 'HP Pavilion', 'Windows 10', '2025-05-11 15:00:00'),
(7, 7, 'Redmi Note 12', 'Android', '2025-05-11 16:00:00'),
(8, 8, 'Dell XPS', 'Windows 11', '2025-05-11 17:00:00'),
(9, 9, 'iPad Pro', 'iPadOS', '2025-05-11 18:00:00'),
(10, 10, 'Huawei MateBook', 'Windows 11', '2025-05-11 19:00:00');
  ```
 </details>

### 8️⃣ LoginHistory:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO LoginHistory (loginID, userID, loginDate, ipAddress) VALUES
(1, 1, '2025-05-01 08:30:00', '192.168.1.1'),
(2, 2, '2025-05-01 09:15:00', '192.168.1.2'),
(3, 3, '2025-05-02 10:20:00', '192.168.1.3'),
(4, 4, '2025-05-02 11:00:00', '192.168.1.4'),
(5, 5, '2025-05-03 12:10:00', '192.168.1.5'),
(6, 6, '2025-05-03 13:45:00', '192.168.1.6'),
(7, 7, '2025-05-04 14:25:00', '192.168.1.7'),
(8, 8, '2025-05-04 15:50:00', '192.168.1.8'),
(9, 9, '2025-05-05 16:40:00', '192.168.1.9'),
(10, 10, '2025-05-05 17:30:00', '192.168.1.10');
  ```
 </details>
 
### 9️⃣ AccessLogs:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO AccessLogs (logID, userID, actionType, actionTime) VALUES
(1, 1, 'PASSWORD_VIEW', '2025-05-01 08:35:00'),
(2, 2, 'PASSWORD_CREATE', '2025-05-01 09:20:00'),
(3, 3, 'PASSWORD_UPDATE', '2025-05-02 10:30:00'),
(4, 4, 'NOTE_DELETE', '2025-05-02 11:10:00'),
(5, 5, 'PASSWORD_VIEW', '2025-05-03 12:20:00'),
(6, 6, 'LOGIN', '2025-05-03 13:50:00'),
(7, 7, 'PASSWORD_UPDATE', '2025-05-04 14:40:00'),
(8, 8, 'PASSWORD_CREATE', '2025-05-04 15:55:00'),
(9, 9, 'PASSWORD_VIEW', '2025-05-05 16:45:00'),
(10, 10, 'LOGOUT', '2025-05-05 17:40:00');

  ```
 </details>
 
### 🔟 SecurityQuestions:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
INSERT INTO SecurityQuestions (questionID, userID, question, answer) VALUES
(1, 1, 'What is your favorite color?', 'Blue'),
(2, 2, 'What is your first school?', 'Al Noor'),
(3, 3, 'What is your pet name?', 'Leo'),
(4, 4, 'What is your favorite food?', 'Pizza'),
(5, 5, 'What city were you born in?', 'Istanbul'),
(6, 6, 'What is your favorite sport?', 'Football'),
(7, 7, 'Who is your childhood hero?', 'Father'),
(8, 8, 'What is your dream job?', 'Engineer'),
(9, 9, 'What was your first phone?', 'Nokia'),
(10, 10, 'What is your favorite animal?', 'Horse');
  ```
 </details>



### The workflow is:  
> Users  
>   ↓  
> Categories  
>   ↓  
> Websites  
>   ↓  
> Accounts  
>   ↓  
> Passwords  
>   ↓  
> Other tables
