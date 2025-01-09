CREATE TABLE titles (
  title_id VARCHAR(5) NOT NULL,
  title VARCHAR(30) NOT NULL,
  PRIMARY KEY (title_id)
);

CREATE TABLE departments (
  dept_no VARCHAR(4) NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
  PRIMARY KEY (dept_no)
);

CREATE TABLE employees (
  emp_no int NOT NULL,
  emp_title_id VARCHAR(5),
  birth_date date,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  sex VARCHAR(1),
  hire_date date,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE dept_manager (
  dept_no VARCHAR(4) NOT NULL,
  emp_no int NOT NULL,
  PRIMARY KEY (dept_no, emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE dept_emp (
  emp_no int NOT NULL,
  dept_no VARCHAR(4) NOT NULL,
  PRIMARY KEY (emp_no, dept_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
  FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

CREATE TABLE salaries (
  emp_no int NOT NULL,
  salary int NOT NULL,
  PRIMARY KEY (emp_no),
  FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);