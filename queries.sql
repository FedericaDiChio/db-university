-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT `name`, `surname`, `date_of_birth`
FROM `students`
WHERE YEAR (`date_of_birth`) = "1972";


-- 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT `name`, `cfu`
FROM `courses`
WHERE `cfu` > "10"; 


-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students` 
WHERE (`date_of_birth`) <= "1991"
ORDER BY (`date_of_birth`) ASC;


-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea
SELECT `name`, `period`, `year`
FROM `courses` 
WHERE `period` = "I semestre" AND `year` = "1";