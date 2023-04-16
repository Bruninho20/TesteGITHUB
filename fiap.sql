
----UNION-----
----Exiba os detalhes dos cargos atual e anterior de todos os funcionários. Exiba cada funcionário apenas uma vez.
SELECT employee_id, job_id, department_id
FROM employees
UNION
SELECT employee_id, job_id, department_id
FROM job_history;

----Exiba os departamentos anterior e atual de todos os funcionários.
----UNION ALL----
SELECT employee_id, job_id, department_id
FROM employees
UNION ALL
SELECT employee_id, job_id, department_id
FROM job_history
ORDER BY employee_id;


----INTERSECT-----
--Exiba os IDs de funcionário e os IDs de cargo dos
--funcionários que, no momento, estão no mesmo cargo
--que ocupavam quando foram admitidos pela empresa
--(ou seja, eles mudaram de cargo, mas agora voltaram
--para o cargo original).

SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;

---MINUS---
--Exiba os IDs dos funcionários que nunca mudaram de cargo.
SELECT employee_id,job_id
FROM employees
MINUS
SELECT employee_id, job_id
FROM job_history;

----Com o operador UNION, exiba o ID de departamento, a localização e a data de admissão de todos os funcionários.
SELECT department_id, TO_NUMBER(null) location, hire_date
FROM employees
UNION
SELECT department_id,  location_id, TO_DATE(null)
FROM departments;





-----Exercícios-------

--1
---ver dps
SELECT department_id
FROM employees
WHERE job_id='ST_CLERK'
MINUS
SELECT department_id
FROM job_history;


--2


desc departments;




