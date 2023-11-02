# MySql-Learnings-employees-mod-db


### `employees` Table

| Column Name     | Data Type       | Constraints                            |
| --------------- | --------------- | -------------------------------------- |
| `id`            | INT             | AUTO_INCREMENT, PRIMARY KEY            |
| `first_name`    | VARCHAR(150)    | NOT NULL                               |
| `last_name`     | VARCHAR(150)    | NOT NULL                               |
| `gender`        | ENUM('f', 'm')  | NOT NULL                               |
| `date_of_birth` | DATE            | NOT NULL                               |
| `email_id`      | VARCHAR(150)    | NOT NULL, UNIQUE                       |
| `password`      | VARCHAR(100)    | NOT NULL                               |
| `mobile_no`     | BIGINT          | NOT NULL, UNIQUE                       |
| `hire_date`     | DATE            |                                        |
| `modified_at`   | TIMESTAMP        | DEFAULT CURRENT_TIMESTAMP ON UPDATE   |
| `status`        | TINYINT         | DEFAULT '1'                            |

### `departments` Table

| Column Name | Data Type    | Constraints              |
| ----------- | ------------ | ------------------------ |
| `id`        | INT          | AUTO_INCREMENT, PRIMARY KEY |
| `name`      | VARCHAR(150) | NOT NULL                |
| `status`    | BOOLEAN      | DEFAULT '1'              |

### `salaries` Table

| Column Name | Data Type | Constraints                 |
| ----------- | --------- | --------------------------- |
| `id`        | INT       | AUTO_INCREMENT, PRIMARY KEY |
| `emp_id`    | INT       | NOT NULL, FOREIGN KEY       |
| `salary`    | BIGINT    | NOT NULL                    |
| `from_date` | DATE      | NOT NULL                    |
| `to_date`   | DATE      |                             |

### `dept_employee` Table

| Column Name | Data Type | Constraints                 |
| ----------- | --------- | --------------------------- |
| `id`        | INT       | AUTO_INCREMENT, PRIMARY KEY |
| `emp_id`    | INT       | NOT NULL, FOREIGN KEY       |
| `dept_id`   | INT       | NOT NULL, FOREIGN KEY       |
| `from_date` | DATE      | NOT NULL                    |
| `to_date`   | DATE      |                             |

### `dept_manager` Table

| Column Name | Data Type | Constraints                 |
| ----------- | --------- | --------------------------- |
| `id`        | INT       | AUTO_INCREMENT, PRIMARY KEY |
| `emp_id`    | INT       | NOT NULL, FOREIGN KEY       |
| `dept_id`   | INT       | NOT NULL, FOREIGN KEY       |
| `from_date` | DATE      | NOT NULL                    |
| `to_date`   | DATE      |                             |

### `employee_titles` Table

| Column Name | Data Type | Constraints                 |
| ----------- | --------- | --------------------------- |
| `id`        | INT       | AUTO_INCREMENT, PRIMARY KEY |
| `emp_id`    | INT       | NOT NULL, FOREIGN KEY       |
| `title`     | VARCHAR(150) |                        |
| `from_date` | DATE      | NOT NULL                    |
| `to_date`   | DATE      |                             |


## ER Diagram
<img width="710" alt="image" src="https://github.com/vishali-30/MySql-Learnings-employees-mod-dbes/assets/116253142/4ba50e2c-e629-4cc0-9f95-6f721f239b8a">
