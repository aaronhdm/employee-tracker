INSERT INTO department (department_name)
VALUES ("Engineering"),
       ("Sales"),
       ("Finance"),
       ("Techs");

INSERT INTO company_role (title, salary, department_id)
VALUES ("Junior Engineer", 65000, 1),
       ("Mid Engineer", 85000, 1),
       ("Senior Engineer", 105000, 1),
       ("Sales Engineer", 85000, 2),
       ("Sales Manager", 100000, 2),
       ("Junior Accountant", 70000, 3),
       ("Senior Accountant", 100000, 3),
       ("Technician", 80000, 4);
    
INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("I", "R", 1, 3),
       ("T", "E", 2, 3),
       ("W", "A", 3, null),
       ("A", "M", 4, 5),
       ("S", "M", 5, null),
       ("A", "M", 6, 7),
       ("L", "M", 7, null),
       ("L", "M", 8, 3),
       ("A", "J", 8, 3),
       ("D", "K", 8, 3);