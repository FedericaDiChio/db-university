-- 1. Selezionare tutti gli studenti nati nel 1990 (160)
SELECT `name`, `surname`, `date_of_birth`
FROM `students`
WHERE YEAR (`date_of_birth`) = "1972";


-- 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT `name`, `cfu`
FROM `courses`
WHERE `cfu` > "10"; 


