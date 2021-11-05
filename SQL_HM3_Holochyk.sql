SQL HomeWork 3. Joins

Valeria Holovchyk

-- 1. ������� ���� ���������� ��� �������� ���� � ����, ������ � ����������.

select employee_name, monthly_salary
from employees
join employee_salary es on employees.id = es.employee_id
join salary s on s.id = es.salary_id;


--2. ������� ���� ���������� � ������� �� ������ 2000.
	
select e.employee_name, s.monthly_salary
from employees e 
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where s.monthly_salary < 2000;

-- 3. ������� ��� ���������� �������, �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)

select  es.employee_id, e.employee_name, s.monthly_salary from employee_salary es 
full JOIN employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where e.employee_name isnull;

--4.  4. ������� ��� ���������� �������  ������ 2000 �� �������� �� ��� �� ��������. (�� ����, �� �� ������� ��� � ��������.)
select es.employee_id, e.employee_name, s.monthly_salary from employee_salary es 
full join employees e on es.employee_id = e.id
join salary s  on es.salary_id = s.id 
where e.employee_name isnull and s.monthly_salary <2000

--5. ����� ���� ���������� ���� �� ��������� ��.
select es.employee_id, e.employee_name, s.monthly_salary from employee_salary es 
join employees e on es.employee_id = e.id 
full join salary s on es.salary_id = s.id 
where s.monthly_salary isnull;

-- 6. ������� ���� ���������� � ���������� �� ���������.
select e.employee_name, r.role_name from employees e
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id


--7.  ������� ����� � ��������� ������ Java �������������.
select e.employee_name, r.role_name from employees e
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%Java developer%';

--8. ������� ����� � ��������� ������ Python �������������.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Python developer%';

-- 9. ������� ����� � ��������� ���� QA ���������.
select  e.employee_name, r.role_name from employees e 
full join roles_employee re on e.id = re.employee_id 
full join roles r on r.id = re.role_id 
where r.role_name like '%QA%';

--10. ������� ����� � ��������� ������ QA ���������.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Manual QA engineer%';

-- 11. ������� ����� � ��������� ��������������� QA
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '% Automation QA engineer%';

-- 12. ������� ����� � �������� Junior ������������
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.employee_id 
join employee_salary es on es.salary_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior%';

-- 13. ������� ����� � �������� Middle ������������
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.employee_id 
join employee_salary es on es.salary_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Middle%';

-- 14. ������� ����� � �������� Senior ������������
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.employee_id 
join employee_salary es on es.salary_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Senior%';

-- 15. ������� �������� Java �������������
select s.monthly_salary, r.role_name  from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where r.role_name like '%Java %'; 

-- 16. ������� �������� Python �������������
select s.monthly_salary, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.employee_id = s.id 
where r.role_name like '%Python%';

-- 17. ������� ����� � �������� Junior Python �������������
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Junior Python%';

--18. ������� ����� � �������� Middle JS �������������
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Middle JS%';


-- 19. ������� ����� � �������� Senior Java �������������
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Senior Java%';

-- 20. ������� �������� Junior QA ���������
select s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Junior QA%';


-- 21. ������� ������� �������� ���� Junior ������������
select avg(s.monthly_salary) as Avg_Junior_Salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Junior%';

-- 22. ������� ����� ������� JS �������������
select sum(s.monthly_salary) as Sum_JS_Developer from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%JavaScript%';

--23. ������� ����������� �� QA ���������
select min(s.monthly_salary) as Min_qa_eng from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%QA%';

-- 24. ������� ������������ �� QA ���������

select max(s.monthly_salary) as Max_qa_eng from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%QA%';

--25. ������� ���������� QA ���������
select count(re.employee_id) as count_qa from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%QA%';

--26. ������� ���������� Middle ������������
select count(re.employee_id) as count_middle from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Middle%';

--27. ������� ���������� �������������
select count(re.employee_id) as count_developer from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%developer%';


-- 28. ������� ���� (�����) �������� �������������.
select sum(s.monthly_salary) as sum_developer from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%developer%';

-- 29. ������� �����, ��������� � �� ���� ������������ �� �����������
select e.employee_name, r.role_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id
order by s.monthly_salary;

--30. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� �� 1700 �� 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where monthly_salary > 1700 and monthly_salary < 2300;

-- 31. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ������ 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where monthly_salary < 2300;


-- 32. ������� �����, ��������� � �� ���� ������������ �� ����������� � ������������ � ������� �� ����� 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where monthly_salary in (1100, 1500, 2000);