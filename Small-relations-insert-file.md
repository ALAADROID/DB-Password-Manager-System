## Small relations insertion:

### 1️⃣ Users:
<details>
  <summary>Show Code</summary>  <br>

  ```sql  
  /*(userID, username, email, masterPassword, createdAt)*/
  
  INSERT INTO Users VALUES
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
  /*(categoryID, categoryName)*/
  
  INSERT INTO Categories VALUES
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
  /*(websiteID, websiteName, websiteURL, categoryID)*/
  
  INSERT INTO Websites VALUES
  (1, 'Instagram', 'https://instagram.com', 1),
  (2, 'Facebook', 'https://facebook.com', 1),
  (3, 'Akbank', 'https://akbank.com', 2),
  (4, 'Udemy', 'https://udemy.com', 3),
  (5, 'Amazon', 'https://amazon.com', 4),
  (6, 'Netflix', 'https://netflix.com', 5),
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
  /*(accountID, userID, websiteID, loginEmail, createdAt)*/
  
  INSERT INTO Accounts VALUES
  (1, 1, 1, 'alaa_insta@gmail.com', '2025-05-01'),
  (2, 1, 7, 'alaa_youtube@gmail.com', '2025-05-02'),
  (3, 2, 2, 'naji_fb@gmail.com', '2025-05-03'),
  (4, 2, 6, 'naji_netflix@gmail.com', '2025-05-04'),
  (5, 3, 3, 'jibreel_bank@gmail.com', '2025-05-05'),
  (6, 4, 4, 'muhammad_udemy@gmail.com', '2025-05-06'),
  (7, 5, 5, 'ahmed_amazon@gmail.com', '2025-05-07'),
  (8, 6, 8, 'mustafa_trendyol@gmail.com', '2025-05-08'),
  (9, 7, 10, 'ali_twitter@gmail.com', '2025-05-09'),
  (10, 8, 1, 'omar_insta@gmail.com', '2025-05-10'),
  (11, 8, 7, 'omar_youtube@gmail.com', '2025-05-11'),
  (12, 9, 9, 'yusuf_course@gmail.com', '2025-05-12'),
  (13, 10, 6, 'ibrahim_netflix@gmail.com', '2025-05-13'),
  (14, 3, 5, 'jibreel_shop@gmail.com', '2025-05-14'),
  (15, 5, 3, 'ahmed_bank@gmail.com', '2025-05-15');
  ```
 </details>

### 5️⃣ Passwords:
<details>
  <summary>Show Code</summary>  <br>

  ```sql

  ```
 </details>

### 6️⃣ Notes:
<details>
  <summary>Show Code</summary>  <br>

  ```sql

  ```
 </details>

### 7️⃣ Devices:
<details>
  <summary>Show Code</summary>  <br>

  ```sql

  ```
 </details>

### 8️⃣ LoginHistory:
<details>
  <summary>Show Code</summary>  <br>

  ```sql

  ```
 </details>
 
### 9️⃣ AccessLogs:
<details>
  <summary>Show Code</summary>  <br>

  ```sql

  ```
 </details>
 
### 🔟 SecurityQuestions:
<details>
  <summary>Show Code</summary>  <br>

  ```sql

  ```
 </details>


 






/*
The workflow is:
Users
  ↓
Categories
  ↓
Websites
  ↓
Accounts
  ↓
Passwords
  ↓
Other tables
*/
