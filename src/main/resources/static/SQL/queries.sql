--- Part1:
-- `id` INT
-- `employer` VARCHAR(255)
-- `name` VARCHAR(255)
-- `skills`VARCHAR(255)

--- Part2:
SELECT name FROM techjobs.employer WHERE location = 'St.Louis';

-- Part 3

DROP TABLE `techjobs`.`job`;

-- Part 4
select distinct name, description from skill 
 INNER JOIN job_skills on skill.id=skills_id where skill.name is not null order by skill.name asc;
 
 select name  , description from skill where id in 
 ( select distinct skills_id from job_skills) and name is not null order by name ASC;
