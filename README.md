# sql-challenge

### Background

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

#### Data Engineering

* Before beginining Data Modeling I have inspcted source CSV files and scetched up an [ERD](./EmployeeSQL/ERD/ERD_Schema.png) using [QDB](http://www.quickdatabasediagrams.com)

* After completing the ERD, I have created table schema in Postgres and imported all the source CSVs

#### Data Analytics

##### I have crated a query returning the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

2. List first name, last name, and hire date for employees who were hired in 1986.

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

## SQLAlchemy and Python

Using SQLAlchemy I have configured engine and connected Python to the local postgres data base containing all the data and performed some additional data analysis using Pandas and Matplotlib. Please refer to the [employee_db_analysis](./EmployeeSQL/employee_db_analysis.ipynb) for additional details