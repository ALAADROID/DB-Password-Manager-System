# DB-Password-Manager-System




## Tables:

| Table             | Purpose                    |
| ----------------- | -------------------------- |
| Users             | app users                  |
| Accounts          | saved website/app accounts |
| Passwords         | encrypted passwords        |
| Categories        | social/media/work/etc      |
| Notes             | secure notes               |
| Devices           | user devices               |
| LoginHistory      | login records              |
| AccessLogs        | actions inside system      |
| SecurityQuestions | recovery questions         |
| Websites          | site/app info              |


## TABLE PLAN:
### Users:
#### Stores users of the password manager system.  
| Column         | Type    | Description           |
| -------------- | ------- | --------------------- |
| userID         | INT PK  | unique user ID        |
| username       | VARCHAR | username              |
| email          | VARCHAR | email                 |
| masterPassword | VARCHAR | app login password    |
| createdAt      | DATE    | account creation date |


### Accounts:
#### Stores saved accounts for websites/apps.
| Column     | Type    |
| ---------- | ------- |
| accountID  | INT PK  |
| userID     | INT FK  |
| websiteID  | INT FK  |
| loginEmail | VARCHAR |
| createdAt  | DATE    |

### Passwords:
#### Stores passwords for saved accounts.
| Column            | Type    |
| ----------------- | ------- |
| passwordID        | INT PK  |
| accountID         | INT FK  |
| encryptedPassword | VARCHAR |
| lastUpdated       | DATE    |

### Websites:
#### Stores website/application information.
| Column      | Type    |
| ----------- | ------- |
| websiteID   | INT PK  |
| websiteName | VARCHAR |
| websiteURL  | VARCHAR |
| categoryID  | INT FK  |

### Categories:
#### Groups websites/accounts into categories.
| Column       | Type    |
| ------------ | ------- |
| categoryID   | INT PK  |
| categoryName | VARCHAR |

### Notes:
#### Stores secure personal notes.
| Column      | Type    |
| ----------- | ------- |
| noteID      | INT PK  |
| userID      | INT FK  |
| noteTitle   | VARCHAR |
| noteContent | TEXT    |
| createdAt   | DATE    |

### Devices:
#### Stores user devices.
| Column          | Type    |
| --------------- | ------- |
| deviceID        | INT PK  |
| userID          | INT FK  |
| deviceName      | VARCHAR |
| operatingSystem | VARCHAR |
| lastLogin       | DATE    |

### LoginHistory:
#### Stores login records into the system.
| Column    | Type     |
| --------- | -------- |
| loginID   | INT PK   |
| userID    | INT FK   |
| loginDate | DATETIME |
| ipAddress | VARCHAR  |

### AccessLogs
#### Stores actions performed inside system.
| Column     | Type     |
| ---------- | -------- |
| logID      | INT PK   |
| userID     | INT FK   |
| actionType | VARCHAR  |
| actionTime | DATETIME |

### SecurityQuestions
#### Stores recovery/security questions.
| Column     | Type    |
| ---------- | ------- |
| questionID | INT PK  |
| userID     | INT FK  |
| question   | VARCHAR |
| answer     | VARCHAR |

> Users → Accounts  
> Users → Notes  
> Users → Devices  
> Users → LoginHistory  
> Users → AccessLogs  
> Users → SecurityQuestions  
>   
> Accounts → Passwords  
> Accounts → Websites  
>   
> Websites → Categories  


## Sample records:

| Table             | Suggested Rows |
| ----------------- | -------------- |
| Users             | 10             |
| Categories        | 5              |
| Websites          | 10             |
| Accounts          | 10             |
| Passwords         | 10             |
| Notes             | 5              |
| Devices           | 5              |
| LoginHistory      | 5              |
| AccessLogs        | 5              |
| SecurityQuestions | 5              |  
> Total ≈ 70 records ✅
