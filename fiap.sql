
----UNION-----
----Exiba os detalhes dos cargos atual e anterior de todos os funcion�rios. Exiba cada funcion�rio apenas uma vez.
SELECT employee_id, job_id, department_id
FROM employees
UNION
SELECT employee_id, job_id, department_id
FROM job_history;

----Exiba os departamentos anterior e atual de todos os funcion�rios.
----UNION ALL----
SELECT employee_id, job_id, department_id
FROM employees
UNION ALL
SELECT employee_id, job_id, department_id
FROM job_history
ORDER BY employee_id;


----INTERSECT-----
--Exiba os IDs de funcion�rio e os IDs de cargo dos
--funcion�rios que, no momento, est�o no mesmo cargo
--que ocupavam quando foram admitidos pela empresa
--(ou seja, eles mudaram de cargo, mas agora voltaram
--para o cargo original).

SELECT employee_id, job_id
FROM employees
INTERSECT
SELECT employee_id, job_id
FROM job_history;

---MINUS---
--Exiba os IDs dos funcion�rios que nunca mudaram de cargo.
SELECT employee_id,job_id
FROM employees
MINUS
SELECT employee_id, job_id
FROM job_history;

----Com o operador UNION, exiba o ID de departamento, a localiza��o e a data de admiss�o de todos os funcion�rios.
SELECT department_id, TO_NUMBER(null) location, hire_date
FROM employees
UNION
SELECT department_id,  location_id, TO_DATE(null)
FROM departments;





-----Exerc�cios-------

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




