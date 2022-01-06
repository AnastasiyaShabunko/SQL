select * from employee_salary;
select * from employees;
select * from roles;
select * from roles_employee;
select * from salary;

 --1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.
select employees.employee_name, salary.mounthly_salary 
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id;

 --2. ������� ���� ���������� � ������� �� ������ 2000.
select employees.employee_name, salary.mounthly_salary 
from employee_salary 
join employees on employee_salary.employee_id = employees.id 
join salary on employee_salary.salary_id = salary.id
where salary.mounthly_salary < 2000;

 --3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.mounthly_salary
from employees 
right join employee_salary on employees.id = employee_salary.employee_id
right join salary on employee_salary.salary_id = salary.id 
where employees.employee_name is null;

 --4. ������� ��� ployee_name ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select employees.employee_name, salary.mounthly_salary
from employees 
right join employee_salary on employees.id = employee_salary.employee_id
right join salary on employee_salary.salary_id = salary.id 
where employees.employee_name is null and salary.mounthly_salary < 2000;

 --5. ����� ���� ���������� ���� �� ��������� ��.
select employees.employee_name, salary.mounthly_salary 
from employees
left join employee_salary on employees.id = employee_salary.employee_id
left join salary on employee_salary.salary_id = salary.id
where salary.mounthly_salary is null;

 --6. ������� ���� ���������� � ���������� �� ���������.
select employees.employee_name, roles.role_name 
from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id;
--���
select employees.employee_name, roles.role_name 
from employees
join roles_employee on employees.id = roles_employee.employee_id 
join roles on roles_employee.role_id = roles.id;

 --7. ������� ����� � ��������� ������ Java �������������.
select employees.employee_name, roles.role_name 
from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Java developer';

 --8. ������� ����� � ��������� ������ Python �������������.
select employees.employee_name, roles.role_name 
from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Python developer';

 --9. ������� ����� � ��������� ���� QA ���������.
select employees.employee_name, roles.role_name 
from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA engineer';

 --10. ������� ����� � ��������� ������ QA ���������.
select employees.employee_name, roles.role_name 
from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Manual QA engineer';

 --11. ������� ����� � ��������� ��������������� QA
select employees.employee_name, roles.role_name 
from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Automation QA engineer';

 --12. ������� ����� � �������� Junior ������������
select employees.employee_name, roles.role_name 
from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Junior%';

 --13. ������� ����� � �������� Middle ������������
select employees.employee_name, roles.role_name 
from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle%';

 --14. ������� ����� � �������� Senior ������������
select employees.employee_name, roles.role_name 
from roles_employee 
join employees on roles_employee.employee_id = employees.id 
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Senior%';

 --15. ������� �������� Java �������������
select salary.mounthly_salary, roles.role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Java developer';

 --16. ������� �������� Python �������������
select salary.mounthly_salary, roles.role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Python developer';

 --17. ������� ����� � �������� Junior Python �������������
select employees.employee_name, salary.mounthly_salary 
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%Junior Python%';

 --18. ������� ����� � �������� Middle JS �������������
select employees.employee_name, salary.mounthly_salary 
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where roles.role_name like 'Middle JavaScript%';

 --19. ������� ����� � �������� Senior Java �������������
select employees.employee_name, salary.mounthly_salary 
from roles_employee 
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where roles.role_name like 'Senior Java d%';

 --20. ������� �������� Junior QA ���������
select salary.mounthly_salary, roles.role_name 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
left join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
left join salary on employee_salary.salary_id = salary.id
where roles.role_name like 'Junior %_% QA%';

 --21. ������� ������� �������� ���� Junior ������������
select avg (salary.mounthly_salary) 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where roles.role_name like 'Junior%';

 --22. ������� ����� ������� JS �������������
select sum (salary.mounthly_salary) 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%JavaScript%';

 --23. ������� ����������� �� QA ���������
select min (salary.mounthly_salary) 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%QA%';

 --24. ������� ������������ �� QA ���������
select max (salary.mounthly_salary) 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%QA%';

 --25. ������� ���������� QA ���������
select count(roles.role_name) 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%QA%';

 --26. ������� ���������� Middle ������������.
select count(roles.role_name) 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%Middle%';

 --27. ������� ���������� �������������
select count(roles.role_name) 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
where roles.role_name like '%developer';

 --28. ������� ���� (�����) �������� �������������.
select sum (salary.mounthly_salary) 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where roles.role_name like '%developer';

 --29. ������� �����, ��������� � �� ���� ������������ �� �����������
select employees.employee_name, roles.role_name, salary.mounthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
order by salary.mounthly_salary asc

 --30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select employees.employee_name, roles.role_name, salary.mounthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where salary.mounthly_salary between 1700 and 2300
order by salary.mounthly_salary 

 --31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select employees.employee_name, roles.role_name, salary.mounthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where salary.mounthly_salary <2300
order by salary.mounthly_salary 

 --32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select employees.employee_name, roles.role_name, salary.mounthly_salary 
from roles_employee
join employees on roles_employee.employee_id = employees.id
join roles on roles_employee.role_id = roles.id
join employee_salary on roles_employee.employee_id = employee_salary.employee_id 
join salary on employee_salary.salary_id = salary.id
where salary.mounthly_salary in ( 1100, 1500, 2000) 
order by salary.mounthly_salary 
