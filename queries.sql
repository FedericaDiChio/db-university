-- 1. Selezionare tutti gli studenti nati nel 1990
SELECT `name`, `surname`, `date_of_birth`
FROM `students`
WHERE YEAR (`date_of_birth`) = 1990;


-- 2. Selezionare tutti i corsi che valgono più di 10 crediti
SELECT `name`, `cfu`
FROM `courses`
WHERE `cfu` > 10; 


-- 3. Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM `students` 
WHERE TIMESTAMPDIFF(YEAR, `date_of_birth`, CURDATE()) >= 30
ORDER BY (`date_of_birth`) DESC;


-- oppure 
-- WHERE `date_of_birth` < DATE_SUB(CURDATE(), INTERVAL 30 YEAR)

-- 4. Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea
SELECT `name`, `period`, `year`
FROM `courses` 
WHERE `period` = "I semestre" 
AND `year` = 1;


-- 5. Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020
SELECT * 
FROM `exams`
WHERE HOUR(`hour`) >= 14
AND `date` = "2020/06/20"
ORDER BY (`hour`) ASC;


-- 6. Selezionare tutti i corsi di laurea magistrale
SELECT `name`, `level` 
FROM `degrees`
WHERE `level` = "magistrale";


-- 7. Da quanti dipartimenti è composta l'università?
SELECT COUNT(*) AS "departments_number"
FROM `departments`;


-- 8. Quanti sono gli insegnanti che non hanno un numero di telefono?
SELECT COUNT(*) AS "teachers_withou_phone"
FROM `teachers` 
WHERE `phone` IS NULL;



-- ESERCIZI GROUP BY 

-- 1. Contare quanti iscritti ci sono stati ogni anno
SELECT COUNT(*) AS "students_enrolled", YEAR(`enrolment_date`) as `year`
FROM `students`
GROUP BY `year`;


-- 2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio
SELECT COUNT(*) AS `teachers_number`, `office_address`
FROM `teachers`
GROUP BY `office_address`;


-- 3. Calcolare la media dei voti di ogni appello d'esame
SELECT ROUND(AVG(`vote`), 2) AS `average_grades`, `exam_id`
FROM `exam_student`
GROUP BY `exam_id`;


-- 4. Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT COUNT(*) AS `courses_number`, `department_id`
FROM `degrees`
GROUP BY `department_id`;

-- SELECT COUNT(*) AS `courses_number`, `departments`.`name`
-- FROM `degrees`
-- JOIN `departments` ON `departments`.`id` = `degrees`.`department_id`
-- GROUP BY `degrees`.`department_id`;

