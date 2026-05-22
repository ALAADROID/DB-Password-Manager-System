## PASSWORD MANAGER DB Creation:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
  CREATE DATABASE PasswordManagerDB;
  ```
 </details>


### 1️⃣ Users:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
Create TABLE Users(
	userID INT PRIMARY KEY, 
	username VARCHAR(50) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	masterPassword VARCHAR(255) NOT NULL,
	createdAt DATE
);
  ```
 </details>

### 2️⃣ Categories:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE TABLE Categories (
    categoryID INT PRIMARY KEY,
    categoryName VARCHAR(50) NOT NULL
);
  ```
 </details>

### 3️⃣ Websites:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE TABLE Websites (
    websiteID INT PRIMARY KEY,
    websiteName VARCHAR(100) NOT NULL,
    websiteURL VARCHAR(255) NOT NULL,
    categoryID INT,

    FOREIGN KEY (categoryID)
    REFERENCES Categories(categoryID)
);
  ```
 </details>

### 4️⃣ Accounts:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE TABLE Accounts (
  accountID INT PRIMARY KEY,
  userID INT NOT NULL,
  websiteID INT NOT NULL,
  loginEmail VARCHAR(100) NOT NULL,
  createdAt DATE,

  FOREIGN KEY (userID)
  REFERENCES Users(userID),

  FOREIGN KEY (websiteID)
  REFERENCES Websites(websiteID),

  CONSTRAINT UQ_Account
  UNIQUE (userID, websiteID, loginEmail)
);
  ```
 </details>

### 5️⃣ Passwords:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE TABLE Passwords (
    passwordID INT PRIMARY KEY,
    accountID INT UNIQUE,
    encryptedPassword VARCHAR(255) NOT NULL,
    lastUpdated DATE,

    FOREIGN KEY (accountID)
	REFERENCES Accounts(accountID)
);
  ```
 </details>

### 6️⃣ Notes:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE TABLE Notes (
    noteID INT PRIMARY KEY,
    userID INT NOT NULL,
    noteTitle VARCHAR(100) NOT NULL,
    noteContent TEXT,
    createdAt DATE,

    FOREIGN KEY (userID)
	REFERENCES Users(userID)
);
  ```
 </details>

### 7️⃣ Devices:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE TABLE Devices (
    deviceID INT PRIMARY KEY,
    userID INT NOT NULL,
    deviceName VARCHAR(100),
    operatingSystem VARCHAR(50),
    lastLogin DATETIME,

    FOREIGN KEY (userID)
	REFERENCES Users(userID)
);
  ```
 </details>

### 8️⃣ LoginHistory:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE TABLE LoginHistory (
    loginID INT PRIMARY KEY,
    userID INT NOT NULL,
    loginDate DATETIME,
    ipAddress VARCHAR(50),

    FOREIGN KEY (userID)
	REFERENCES Users(userID)
);
  ```
 </details>
 
### 9️⃣ AccessLogs:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE TABLE AccessLogs (
    logID INT PRIMARY KEY,
    userID INT NOT NULL,
    actionType VARCHAR(255) NOT NULL,
    actionTime DATETIME,

    FOREIGN KEY (userID) REFERENCES Users(userID),
	CONSTRAINT CHK_ActionType CHECK (actionType IN ('LOGIN', 'LOGOUT', 'PASSWORD_CREATE', 'PASSWORD_UPDATE', 'PASSWORD_VIEW', 'NOTE_CREATE', 'NOTE_DELETE'))
);
  ```
 </details>
 
### 🔟 SecurityQuestions:
<details>
  <summary>Show Code</summary>  <br>

  ```sql
CREATE TABLE SecurityQuestions (
    questionID INT PRIMARY KEY,
    userID INT NOT NULL,
    question VARCHAR(255),
    answer VARCHAR(255),

    FOREIGN KEY (userID)
	REFERENCES Users(userID)
);
  ```
 </details>


 

