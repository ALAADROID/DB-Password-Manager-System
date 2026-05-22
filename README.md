# DB-Password-Manager-System

## Tables:

| Table             | Purpose                    |
| ----------------- | -------------------------- |
| Users             | App users                  |
| Accounts          | Saved website/app accounts |
| Passwords         | Encrypted passwords        |
| Categories        | Social/media/work/etc      |
| Notes             | Secure notes               |
| Devices           | User devices               |
| LoginHistory      | Login records              |
| AccessLogs        | Actions inside system      |
| SecurityQuestions | Recovery questions         |
| Websites          | Site/app info              |

## TABLE PLAN:

### Users:
#### Stores users of the password manager system.  
| Column         | Type       | Description           |
| -------------- | ---------- | --------------------- |
| userID         | INT PK     | Unique user ID        |
| username       | VARCHAR(50)| Username (NOT NULL)   |
| email          | VARCHAR(100)| Email (UNIQUE, NOT NULL) |
| masterPassword | VARCHAR(255)| App login password (NOT NULL) |
| createdAt      | DATE       | Account creation date |

### Categories:
#### Groups websites/accounts into categories.
| Column       | Type        | Description           |
| ------------ | ----------- | --------------------- |
| categoryID   | INT PK      | Unique category ID    |
| categoryName | VARCHAR(50) | Category name (NOT NULL) |

### Websites:
#### Stores website/application information.
| Column      | Type         | Description           |
| ----------- | ------------ | --------------------- |
| websiteID   | INT PK       | Unique website ID     |
| websiteName | VARCHAR(100) | Website name (NOT NULL) |
| websiteURL  | VARCHAR(255) | Website URL (NOT NULL) |
| categoryID  | INT FK       | References Categories(categoryID) |

### Accounts:
#### Stores saved accounts for websites/apps. Links Users to Websites.
| Column     | Type         | Description           |
| ---------- | ------------ | --------------------- |
| accountID  | INT PK       | Unique account ID     |
| userID     | INT FK       | References Users(userID) (NOT NULL) |
| websiteID  | INT FK       | References Websites(websiteID) (NOT NULL) |
| loginEmail | VARCHAR(100) | Login email (NOT NULL) |
| createdAt  | DATE         | Account addition date |
| **Constraint**| **UQ_Account** | **UNIQUE (userID, websiteID, loginEmail)** |

### Passwords:
#### Stores passwords for saved accounts (1:1 Relationship with Accounts).
| Column            | Type         | Description           |
| ----------------- | ------------ | --------------------- |
| passwordID        | INT PK       | Unique password ID    |
| accountID         | INT FK       | References Accounts(accountID) (UNIQUE, NOT NULL) |
| encryptedPassword | VARCHAR(255) | Encrypted password string (NOT NULL) |
| lastUpdated       | DATE         | Last password change date |

### Notes:
#### Stores secure personal notes.
| Column      | Type         | Description           |
| ----------- | ------------ | --------------------- |
| noteID      | INT PK       | Unique note ID        |
| userID      | INT FK       | References Users(userID) (NOT NULL) |
| noteTitle   | VARCHAR(100) | Note title (NOT NULL) |
| noteContent | TEXT         | Plain text note content |
| createdAt   | DATE         | Note creation date    |

### Devices:
#### Stores user devices.
| Column          | Type         | Description           |
| --------------- | ------------ | --------------------- |
| deviceID        | INT PK       | Unique device ID      |
| userID          | INT FK       | References Users(userID) (NOT NULL) |
| deviceName      | VARCHAR(100) | Device model name     |
| operatingSystem | VARCHAR(50)  | OS running on device  |
| lastLogin       | DATETIME     | Timestamp of last sync|

### LoginHistory:
#### Stores login records into the system.
| Column    | Type     | Description           |
| --------- | -------- | --------------------- |
| loginID   | INT PK   | Unique record ID      |
| userID    | INT FK   | References Users(userID) (NOT NULL) |
| loginDate | DATETIME | Timestamp of login    |
| ipAddress | VARCHAR(50)| IP address used     |

### AccessLogs
#### Stores system actions with strict type validation.
| Column     | Type         | Description           |
| ---------- | ------------ | --------------------- |
| logID      | INT PK       | Unique log ID         |
| userID     | INT FK       | References Users(userID) (NOT NULL) |
| actionType | VARCHAR(255) | Standardized action type (NOT NULL) |
| actionTime | DATETIME     | Timestamp of action   |
| **Constraint**| **CHK_ActionType** | **CHECK (actionType IN ('LOGIN', 'LOGOUT', ...))** |

### SecurityQuestions
#### Stores recovery/security questions.
| Column     | Type         | Description           |
| ---------- | ------------ | --------------------- |
| questionID | INT PK       | Unique question ID    |
| userID     | INT FK       | References Users(userID) (NOT NULL) |
| question   | VARCHAR(255) | Security question     |
| answer     | VARCHAR(255) | Hashed/Plain answer   |

### Core Structural Schema Flow:
> Users → Accounts  
> Users → Notes  
> Users → Devices  
> Users → LoginHistory  
> Users → AccessLogs  
> Users → SecurityQuestions  
>   
> Websites → Accounts  
> Accounts → Passwords  
>   
> Categories → Websites  

## Sample Records Distribution:

| Table             | Rows |
| ----------------- | ---- |
| Users             | 10   |
| Categories        | 5    |
| Websites          | 10   |
| Accounts          | 15   |
| Passwords         | 15   |
| Notes             | 10   |
| Devices           | 10   |
| LoginHistory      | 10   |
| AccessLogs        | 10   |
| SecurityQuestions | 10   |
| **Total** | **105 records** ✅ |
