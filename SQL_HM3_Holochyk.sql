SQL HomeWork 3. Joins

Valeria Holovchyk

-- 1. Вывести всех работников чьи зарплаты есть в базе, вместе с зарплатами.

select employee_name, monthly_salary
from employees
join employee_salary es on employees.id = es.employee_id
join salary s on s.id = es.salary_id;


--2. Âûâåñòè âñåõ ðàáîòíèêîâ ó êîòîðûõ ÇÏ ìåíüøå 2000.
	
select e.employee_name, s.monthly_salary
from employees e 
join employee_salary es on es.employee_id = e.id 
join salary s on s.id = es.salary_id 
where s.monthly_salary < 2000;

-- 3. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè, íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)

select  es.employee_id, e.employee_name, s.monthly_salary from employee_salary es 
full JOIN employees e on es.employee_id = e.id 
join salary s on es.salary_id = s.id 
where e.employee_name isnull;

--4.  4. Âûâåñòè âñå çàðïëàòíûå ïîçèöèè  ìåíüøå 2000 íî ðàáîòíèê ïî íèì íå íàçíà÷åí. (ÇÏ åñòü, íî íå ïîíÿòíî êòî å¸ ïîëó÷àåò.)
select es.employee_id, e.employee_name, s.monthly_salary from employee_salary es 
full join employees e on es.employee_id = e.id
join salary s  on es.salary_id = s.id 
where e.employee_name isnull and s.monthly_salary <2000

--5. Íàéòè âñåõ ðàáîòíèêîâ êîìó íå íà÷èñëåíà ÇÏ.
select es.employee_id, e.employee_name, s.monthly_salary from employee_salary es 
join employees e on es.employee_id = e.id 
full join salary s on es.salary_id = s.id 
where s.monthly_salary isnull;

-- 6. Âûâåñòè âñåõ ðàáîòíèêîâ ñ íàçâàíèÿìè èõ äîëæíîñòè.
select e.employee_name, r.role_name from employees e
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id


--7.  Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Java ðàçðàáîò÷èêîâ.
select e.employee_name, r.role_name from employees e
join roles_employee re on e.id = re.employee_id
join roles r on r.id = re.role_id
where r.role_name like '%Java developer%';

--8. Âûâåñòè èìåíà è äîëæíîñòü òîëüêî Python ðàçðàáîò÷èêîâ.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Python developer%';

-- 9. Âûâåñòè èìåíà è äîëæíîñòü âñåõ QA èíæåíåðîâ.
select  e.employee_name, r.role_name from employees e 
full join roles_employee re on e.id = re.employee_id 
full join roles r on r.id = re.role_id 
where r.role_name like '%QA%';

--10. Âûâåñòè èìåíà è äîëæíîñòü ðó÷íûõ QA èíæåíåðîâ.
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '%Manual QA engineer%';

-- 11. Âûâåñòè èìåíà è äîëæíîñòü àâòîìàòèçàòîðîâ QA
select e.employee_name, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
where r.role_name like '% Automation QA engineer%';

-- 12. Âûâåñòè èìåíà è çàðïëàòû Junior ñïåöèàëèñòîâ
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.employee_id 
join employee_salary es on es.salary_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Junior%';

-- 13. Âûâåñòè èìåíà è çàðïëàòû Middle ñïåöèàëèñòîâ
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.employee_id 
join employee_salary es on es.salary_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Middle%';

-- 14. Âûâåñòè èìåíà è çàðïëàòû Senior ñïåöèàëèñòîâ
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.employee_id 
join employee_salary es on es.salary_id = e.id 
join salary s on s.id = es.salary_id 
where r.role_name like '%Senior%';

-- 15. Âûâåñòè çàðïëàòû Java ðàçðàáîò÷èêîâ
select s.monthly_salary, r.role_name  from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where r.role_name like '%Java %'; 

-- 16. Âûâåñòè çàðïëàòû Python ðàçðàáîò÷èêîâ
select s.monthly_salary, r.role_name from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.employee_id = s.id 
where r.role_name like '%Python%';

-- 17. Âûâåñòè èìåíà è çàðïëàòû Junior Python ðàçðàáîò÷èêîâ
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Junior Python%';

--18. Âûâåñòè èìåíà è çàðïëàòû Middle JS ðàçðàáîò÷èêîâ
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Middle JS%';


-- 19. Âûâåñòè èìåíà è çàðïëàòû Senior Java ðàçðàáîò÷èêîâ
select e.employee_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Senior Java%';

-- 20. Âûâåñòè çàðïëàòû Junior QA èíæåíåðîâ
select s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Junior QA%';


-- 21. Âûâåñòè ñðåäíþþ çàðïëàòó âñåõ Junior ñïåöèàëèñòîâ
select avg(s.monthly_salary) as Avg_Junior_Salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Junior%';

-- 22. Âûâåñòè ñóììó çàðïëàò JS ðàçðàáîò÷èêîâ
select sum(s.monthly_salary) as Sum_JS_Developer from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%JavaScript%';

--23. Âûâåñòè ìèíèìàëüíóþ ÇÏ QA èíæåíåðîâ
select min(s.monthly_salary) as Min_qa_eng from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%QA%';

-- 24. Âûâåñòè ìàêñèìàëüíóþ ÇÏ QA èíæåíåðîâ

select max(s.monthly_salary) as Max_qa_eng from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%QA%';

--25. Âûâåñòè êîëè÷åñòâî QA èíæåíåðîâ
select count(re.employee_id) as count_qa from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%QA%';

--26. Âûâåñòè êîëè÷åñòâî Middle ñïåöèàëèñòîâ
select count(re.employee_id) as count_middle from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%Middle%';

--27. Âûâåñòè êîëè÷åñòâî ðàçðàáîò÷èêîâ
select count(re.employee_id) as count_developer from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%developer%';


-- 28. Âûâåñòè ôîíä (ñóììó) çàðïëàòû ðàçðàáîò÷èêîâ.
select sum(s.monthly_salary) as sum_developer from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id 
where r.role_name like '%developer%';

-- 29. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ
select e.employee_name, r.role_name, s.monthly_salary from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on r.id = re.role_id 
join employee_salary es on e.id = es.employee_id 
join salary s on es.salary_id  = s.id
order by s.monthly_salary;

--30. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ îò 1700 äî 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where monthly_salary > 1700 and monthly_salary < 2300;

-- 31. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ìåíüøå 2300
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where monthly_salary < 2300;


-- 32. Âûâåñòè èìåíà, äîëæíîñòè è ÇÏ âñåõ ñïåöèàëèñòîâ ïî âîçðàñòàíèþ ó ñïåöèàëèñòîâ ó êîòîðûõ ÇÏ ðàâíà 1100, 1500, 2000
select e.employee_name, r.role_name, s.monthly_salary 
from employees e 
join roles_employee re on e.id = re.employee_id 
join roles r on re.role_id = r.id 
join employee_salary es on e.id =es.employee_id 
join salary s on es.salary_id = s.id
where monthly_salary in (1100, 1500, 2000);
