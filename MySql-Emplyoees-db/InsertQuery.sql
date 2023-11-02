USE Employees_db;

 START TRANSACTION;  

INSERT INTO employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no, hire_date)
VALUES
    ('John', 'Doe', 'm', '1990-05-15', 'johndoe1@gmail.com', 'password123', 9088888888, '2016-01-15'),
    ('Jane', 'Smith', 'f', '1988-08-22', 'janesmith2@gmail.com', 'secret456', 9877777777, '2016-02-20'),
    ('Bob', 'Johnson', 'm', '1995-11-10', 'bjohnson3@gmail.com', 'secure789', 6355555555, '2016-03-05'),
    ('Alice', 'Williams', 'f', '1992-04-30', 'awilliams4@gmail.com', 'passwd567', 7866666666, '2016-04-10'),
    ('Michael', 'Brown', 'm', '1987-09-18', 'mbrown5@gmail.com', '123456', 9777777777, '2016-05-15'),
    ('Emily', 'Anderson', 'f', '1991-12-05', 'eanderson6@gmail.com', 'password678', 8188888888, '2016-06-20'),
    ('David', 'Miller', 'm', '1989-03-27', 'dmiller7@gmail.com', 'secure999', 9599999999, '2016-07-25'),
    ('Laura', 'Davis', 'f', '1993-07-10', 'ldavis8@gmail.com', 'laurapass', 9010101010, '2016-08-30'),
    ('Robert', 'Wilson', 'm', '1986-06-15', 'rwilson9@gmail.com', 'robert123', 8212121212, '2016-09-05'),
    ('Sarah', 'Taylor', 'f', '1985-09-20', 'staylor10@gmail.com', 'password555', 7313131313, '2016-10-10');
    
    -- Insert 10 employee records for the year 2016 with unique first names
INSERT INTO employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no, hire_date)
VALUES
    ('William', 'Anderson', 'm', '1991-03-15', 'william.anderson@gmail.com', 'pass123', 9922333444, '2017-01-15'),
    ('Olivia', 'Martinez', 'f', '1988-10-22', 'olivia.martinez@gmail.com', 'secure456', 9871112222, '2017-02-20'),
    ('James', 'Brown', 'm', '1995-11-10', 'james.brown@gmail.com', 'pass789', 9777818999, '2017-03-05'),
    ('Ava', 'Garcia', 'f', '1992-04-30', 'ava.garcia@gmail.com', 'passwd567', 9199777666, '2017-04-10'),
    ('Benjamin', 'Perez', 'm', '1987-09-18', 'benjamin.perez@gmail.com', 'secure123', 8611222233, '2017-05-15'),
    ('Sophia', 'Lee', 'f', '1991-12-05', 'sophia.lee@gmail.com', 'pass678', 8555666777, '2017-06-20'),
    ('Ethan', 'Clark', 'm', '1989-03-27', 'ethan.clark@gmail.com', 'secure999', 8477888999, '2017-07-25'),
    ('Mia', 'Rodriguez', 'f', '1993-07-10', 'mia.rodriguez@gmail.com', 'mia123', 8388666777, '2017-08-30'),
    ('Daniel', 'Turner', 'm', '1986-06-15', 'daniel.turner@gmail.com', 'daniel123', 8211222344, '2017-09-05'),
    ('Isabella', 'Hernandez', 'f', '1985-09-20', 'isabella.hernandez@gmail.com', 'pass555', 9855444777, '2017-10-10');
    
    -- Insert 10 employee records for the year 2018 with unique first names
INSERT INTO employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no, hire_date)
VALUES
    ('Mason', 'Gonzalez', 'm', '1992-01-15', 'mason.gonzalez@gmail.com', 'pass123', 7834567890, '2018-01-15'),
    ('Sophia', 'Lopez', 'f', '1989-03-22', 'sophia.lopez@gmail.com', 'secure456', 7876543210, '2018-02-20'),
    ('Liam', 'Jackson', 'm', '1996-05-10', 'liam.jackson@gmail.com', 'pass789', 6255555555, '2018-03-05'),
    ('Ava', 'Harris', 'f', '1993-04-30', 'ava.harris@gmail.com', 'passwd567', 6366616666, '2018-04-10'),
    ('Noah', 'Lewis', 'm', '1988-09-18', 'noah.lewis@gmail.com', 'secure123', 8571777777, '2018-05-15'),
    ('Olivia', 'Walker', 'f', '1992-12-05', 'olivia.walker@gmail.com', 'pass678', 9688880888, '2018-06-20'),
    ('Liam', 'Hall', 'm', '1990-03-27', 'liam.hall@gmail.com', 'secure999', 8069999999, '2018-07-25'),
    ('Isabella', 'Young', 'f', '1985-07-10', 'isabella.young@gmail.com', 'pass123', 9410101010, '2018-08-30'),
    ('James', 'Turner', 'm', '1991-06-15', 'james.turner@gmail.com', 'pass678', 9872121212, '2018-09-05'),
    ('Sophia', 'Moore', 'f', '1986-09-20', 'sophia.moore@gmail.com', 'secure456', 9323131313, '2018-10-10');
    
    -- Insert 10 employee records for the year 2019 with unique first names
INSERT INTO employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no, hire_date)
VALUES
    ('Elijah', 'Adams', 'm', '1990-05-15', 'elijah.adams@gmail.com', 'pass123', 9234467890, '2019-01-15'),
    ('Olivia', 'Wright', 'f', '1988-08-22', 'olivia.wright@gmail.com', 'secure456', 9874543210, '2019-02-20'),
    ('Liam', 'Garcia', 'm', '1995-11-10', 'liam.Garcia@gmail.com', 'pass789', 8855555555, '2019-03-05'),
    ('Ava', 'Lewis', 'f', '1992-04-30', 'ava.lewis@gmail.com', 'passwd567', 6646666666, '2019-04-10'),
    ('Noah', 'Garcia', 'm', '1987-09-18', 'noah.garcia@gmail.com', 'secure123', 7776677777, '2019-05-15'),
    ('Sophia', 'Harris', 'f', '1991-12-05', 'sophia.harris@gmail.com', 'pass678', 9988828888, '2019-06-20'),
    ('Liam', 'Robinson', 'm', '1989-03-27', 'liam.robinson@gmail.com', 'secure999', 9997699999, '2019-07-25'),
    ('Isabella', 'Garcia', 'f', '1993-07-10', 'isabella.Garcia@gmail.com', 'pass123', 9870101010, '2019-08-30'),
    ('Mason', 'Martinez', 'm', '1986-06-15', 'mason.martinez@gmail.com', 'pass678', 9672121212, '2019-09-05'),
    ('Olivia', 'Clark', 'f', '1985-09-20', 'olivia.clark@gmail.com', 'secure456', 9873131313, '2019-10-10');

-- Insert 10 employee records for the year 2020 with unique first names
INSERT INTO employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no, hire_date)
VALUES
    ('Ethan', 'Davis', 'm', '1992-05-15', 'ethan.Davis@gmail.com', 'ethan123', 9870067890, '2020-01-15'),
    ('Ava', 'Davis', 'f', '1990-08-22', 'ava.Davis@gmail.com', 'ava456', 98760103210, '2020-02-20'),
    ('Noah', 'Harris', 'm', '1996-11-10', 'noah.Harris@gmail.com', 'noah789', 9860555555, '2020-03-05'),
    ('Olivia', 'King', 'f', '1993-04-30', 'olivia.King@gmail.com', 'olivia567', 8890166666, '2020-04-10'),
    ('Liam', 'Mitchell', 'm', '1988-09-18', 'liam.Howard@gmail.com', 'liam123', 7654770077, '2020-05-15'),
    ('Sophia', 'Mitchell', 'f', '1992-12-05', 'sophia.Mitchell@gmail.com', 'sophia678', 9990188888, '2020-06-20'),
    ('Benjamin', 'Wright', 'm', '1990-03-27', 'benjamin.wright@gmail.com', 'benjamin999', 9999876549, '2020-07-25'),
    ('Mia', 'Turner', 'f', '1994-07-10', 'mia.turner@gmail.com', 'mia456', 9908101910, '2020-08-30'),
    ('Daniel', 'King', 'm', '1987-06-15', 'daniel.king@gmail.com', 'daniel123', 7789013212, '2020-09-05'),
    ('Isabella', 'Harris', 'f', '1986-09-20', 'isabella.harris@gmail.com', 'isabella567', 8876541313, '2020-10-10');


-- Insert 10 employee records for the year 2021 with unique first names
INSERT INTO employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no, hire_date)
VALUES
    ('Oliver', 'Smith', 'm', '1991-03-15', 'oliver.smith@gmail.com', 'oliver123', 6782333444, '2021-01-15'),
    ('Charlotte', 'Johnson', 'f', '1988-10-22', 'charlotte.johnson@gmail.com', 'charlotte456', 9871002222, '2021-02-20'),
    ('Liam', 'Davis', 'm', '1995-11-10', 'liam.Davis@gmail.com', 'liam789', 7700088999, '2021-03-05'),
    ('Amelia', 'Browns', 'f', '1992-04-30', 'amelia.browns@gmail.com', 'amelia567', 9900777666, '2021-04-10'),
    ('James', 'Jones', 'm', '1987-09-18', 'james.jones@gmail.com', 'james123', 9911222233, '2021-05-15'),
    ('Sophia', 'Davis', 'f', '1991-12-05', 'sophia.davis@gmail.com', 'sophia678', 8855666777, '2021-06-20'),
    ('Benjamin', 'Clark', 'm', '1989-03-27', 'benjamin.clark@gmail.com', 'benjamin999', 9977888999, '2021-07-25'),
    ('Ava', 'Moore', 'f', '1993-07-10', 'ava.moore@gmail.com', 'ava123', 8308666777, '2021-08-30'),
    ('Mason', 'Robinson', 'm', '1986-06-15', 'mason.robinson@gmail.com', 'mason123', 9933777666, '2021-09-05'),
    ('Ella', 'Lewis', 'f', '1985-09-20', 'ella.lewis@gmail.com', 'ella567', 9905666777, '2021-10-10');
    
    
    INSERT INTO employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no, hire_date)
VALUES
    ('Oliver', 'Liam', 'm', '1991-03-15', 'oliver.Liam@gmail.com', 'oliver123', 9200333444, '2022-01-15'),
    ('Charlotte', 'Johnsons', 'f', '1988-10-22', 'charlotte.johnsons@gmail.com', 'charlotte456', 9870012222, '2022-02-20'),
    ('Liam', 'Charlotte', 'm', '1995-11-10', 'liam.Charlotte@gmail.com', 'liam789', 7701888999, '2022-03-05'),
    ('Williams', 'Charlotte', 'f', '1992-04-30', 'amelia.Charlotte@gmail.com', 'amelia567', 9990077666, '2022-04-10'),
    ('James', 'Robinson', 'm', '1987-09-18', 'james.Robinson@gmail.com', 'james123', 9995222233, '2022-05-15'),
    ('Sophia', 'Charlotte', 'f', '1991-12-05', 'sophia.Charlotte@gmail.com', 'sophia678', 8055666777, '2022-06-20'),
    ('Benjamin', 'James', 'm', '1989-03-27', 'benjamin.James@gmail.com', 'benjamin999', 7777800099, '2022-07-25'),
    ('Ava', 'Robinson', 'f', '1993-07-10', 'ava.Robinson@gmail.com', 'ava123', 8888655077, '2022-08-30'),
    ('Mason', 'Lewis', 'm', '1986-06-15', 'mason.Lewis@gmail.com', 'mason123', 9999777346, '2022-09-05'),
    ('Moore', 'James', 'f', '1985-09-20', 'ella.James@gmail.com', 'ella567', 9805666777, '2022-10-10');
    
    INSERT INTO employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no, hire_date)
VALUES
    ('Ethan', 'Baker', 'm', '1992-05-15', 'ethan.baker@gmail.com', 'ethan123', 9234566890, '2023-01-15'),
    ('Ava', 'Hernandez', 'f', '1990-08-22', 'ava.hernandez@gmail.com', 'ava456', 9876513210, '2023-02-20'),
    ('Noah', 'Gonzalez', 'm', '1996-11-10', 'noah.gonzalez@gmail.com', 'noah789', 5555555555, '2023-03-05'),
    ('Liam', 'Fisher', 'f', '1993-04-30', 'olivia.fisher@gmail.com', 'olivia567', 6636666666, '2023-04-10'),    
    ('Ethan', 'James', 'm', '1989-03-27', 'ethan.James@gmail.com', 'secure999', 7777818999, '2023-07-25'),
    ('Mia', 'Rodriguez', 'f', '1993-07-10', 'mia.rodriguez2@gmail.com', 'mia123', 8888166777, '2023-08-30'),
      ('Liam', 'Williams', 'm', '1995-11-10', 'liam.williams@gmail.com', 'liam789', 7772888999, '2023-03-05'),
    ('Williams', 'Brown', 'f', '1992-04-30', 'amelia.brown@gmail.com', 'amelia567', 9919777666, '2023-04-10'),
    ('Mason', 'Brown', 'm', '1986-06-15', 'mason.Brown@gmail.com', 'mason123', 9399777666, '2023-09-05'),
    ('James', 'Lewis', 'f', '1985-09-20', 'James.lewis@gmail.com', 'ella567', 8355666777, '2023-10-10');
    
    insert into employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no)
    values ('Lewis','Williams','f','2000-09-08','Williams.Lewis1@gmail.com','Password@12',8877765543);
    
     insert into employees (first_name, last_name, gender, date_of_birth, email_id, password, mobile_no)
    values ("pranaw","murugesan","m","2005-05-01","forpractice@gmail.com","thisIsAPassword",9944187132);
    
    
INSERT INTO departments (name)
VALUES
    ('Development'),
    ('Quality Assurance'),
    ('DevOps'),
    ('Product Management'),
    ('Customer Support'),
    ('Sales and Marketing'),
    ('Chief People Officer'),
    ('Human Resources'),
    ('Finance and Accounting'),
    ('Information technology and Infrastructure'),
    ('Cloud Services'),
    ('Data Analytics'),
    ('Security '),
    ('Research and Development'),
    ('Project Management'),
    ('Design and User Experience'),
    ('Training and Development'),
    ('Business Development');

INSERT INTO salaries (emp_id,salary,from_date) VALUES ('');

INSERT INTO dept_employee (emp_id,dept_id,from_date) VALUES (1,3,'2016-01-15'),(2,2,'2016-02-20');
insert into dept_employee(emp_id,dept_id,from_date)values (3,2,'2016-03-05');
insert into dept_employee(emp_id,dept_id,from_date)values (4,2,'2016-04-10');

