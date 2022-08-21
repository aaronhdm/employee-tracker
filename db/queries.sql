-- Show all Departments
SELECT department.department_name AS "Department", department.id AS "Dept ID"
FROM department;
-- Show all Roles
SELECT rl.title AS "Title", rl.id AS "Role ID", dpt.department_name AS "Department", rl.salary AS "Salary"
FROM company_role AS rl
LEFT JOIN department AS dpt ON rl.department_id = dpt.id;
-- View All Employees
SELECT emp.id AS "ID", emp.first_name AS "First Name", emp.last_name AS "Last Name",  rl.title AS "Title", dpt.department_name AS "Department", rl.salary AS "Salary", CONCAT(mng.first_name, " ", mng.last_name) as "Manager"
FROM employee AS emp
LEFT JOIN employee AS mng ON emp.manager_id = mng.id
INNER JOIN company_role AS rl ON emp.role_id = rl.id
INNER JOIN department AS dpt ON rl.department_id = dpt.id WHERE dpt.id = department_id;
-- Add a Department
INSERT INTO department (department_name)
VALUES ("Department");
-- Add a Role
INSERT INTO company_role (title, salary, department_id)
VALUES ("Role", 100000, 1);
-- Add an Employee
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("J", "K", 1, null);
-- Update an Employee Role
UPDATE employee
SET employee.role_id = 7
WHERE employee.id = 1;