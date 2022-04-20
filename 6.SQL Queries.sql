USE `Hogwarts School of Magic`;

-- ***************************************************
-- SELECT Statements
-- ***************************************************

-- Business Question 1: The headmaster thinks that they need to revise the school syllabus and wants to check how many subject types are currently available at Hogwarts

SELECT SubjectType,COUNT(SubjectType) AS `Number of Subjects` FROM Subjects
	GROUP BY SubjectType
    ORDER BY `Number of Subjects`;
    

-- Business Question 2: The house of Syltherin wants to find its member students have the bloodstatus of 'Muggle-born'. 

SELECT studentID, concat(firstName," ",middleName," ",lastName) AS `Name of Student` FROM Student
	WHERE bloodStatus = 'Muggle-born' and houseID = 4;


-- Business Question 3: The school will be voting to allocate a separate building for housing student pets and wants to know how many pets are owned by students and professors respectively.

SELECT IF(S.StudentID IS NULL , 'Student', 'Professor') AS `Owner Type`, count(petID) AS `Number of Pets`
FROM Pet as P
LEFT JOIN Student AS S ON P.OwnerFirstName = S.FirstName AND P.OwnerLastName = S.LastName
GROUP BY `Owner Type`;


-- Business Question 4: Some cauldrons have exploded and the school wants to know which classes use a cauldron in order to restock them. 

SELECT C.ClassName, S.SubjectName 
FROM Class AS C
JOIN Subjects AS S ON C.SubjectID = S.SubjectID
WHERE S.requiredEquipment LIKE '%cauldron%';


-- Business Question 5: The School wants to report the level ranking within each level to its students, so trhat they can see how they compare to their peers.

SELECT concat(S.firstName," ",S.middleName," ",S.lastName) AS `Name of Student` , CL.levelName, G.GradeName, 
			RANK() OVER (PARTITION BY S.ClassLevelID ORDER BY S.GradeID,S.HouseID) AS `Level Rank`
FROM Student AS S
JOIN ClassLevel AS CL ON S.ClassLevelID=CL.ClassLevelID
JOIN Grade AS G ON S.GradeID= G.GradeID;


-- Business Question 6: Dumbledore wants to figure out the salary to give to the new professor of Alchemy as professor Beery is transferring to another wizarding school in Greece. For this, find out the number of classes that professor Beery currently teaches.

select classID, className, class.professorID, employeeFirstName, employeeLastName
from employee join class
on employee.employeeID = class.professorID
where employeeLastName = 'Beery';

 
-- Business Question 7: In order to maintain funding throughout the academic year, Sphinx Club needs students from all class levels. Find out which class levels are missing from the club.

select club.clubid, clubName, studentID, firstName, lastName, classLevelID
from student join club
on student.clubID = club.clubID
where clubName = "Sphinx Club" and classlevelID = 5;


-- Business Question 8: To teach the fifth years, Professor Snape needs to stock up on some potions that have been secretly missing from his storeroom. Find out how many potions are required for this.

select potionID, potionName, potion.classID, className
from potion join class
on potion.classID = class.classID
where potion.classID like '%501';


-- Business Question 9: The Ministry of Magic would like to offer internships to interested students from sixth year who have performed outstandingly and exceeded expectations in their O.W.L.S.

select studentID, firstName, lastName
from (select studentID, firstName, lastName, gradeLetter, gradeName from student  join grade
on student.gradeID = grade.gradeID where classlevelID = 6) as GS
where gradeletter IN ('E', 'O');


-- Business Question 10: The school management would like to repair the classroom locations that hold most classes. Find them.

select location, count(classID)
from class 
group by location
order by count(classID) desc;


-- Business Question 11: Professor Minerva McGonagall with id 22 is interested in the number of credits he is doing on a particular day.

SELECT professorID,scheduledDay,sum(credits)
FROM class 
where professorID=22
group by scheduledDay;


-- Business Question 12: 3 friends who got their grade letters in the result wanted to know whether they are passed or failed

SELECT * FROM grade;
SELECT GradeLetter,PassOrFail 
FROM grade 
WHERE GradeLetter in ('P','T','E');


-- Business Question 13: Administration is interested in knowing the number of classes taken by each professor in this semester.

SELECT employeeType,employeeFirstName,employeeLastName,count(classID) as `Number of classes taken by the professor` FROM class C 
join employee emp on c.professorID=emp.employeeID
where employeeType='Professor'
group by employeeFirstName,employeeLastName;


-- Business Question 14: Filius Flitwick is interested in a girl who doesn't have a middle name and a pure blooded in their house

SELECT
HeadOfHouse,HouseName,studentID,firstName,lastName,gender,bloodStatus,hairColor,eyeColor FROM student as s 
right join house as h on s.houseID=h.HouseID
where middleName = '' and gender='Female' and bloodStatus='Pure-blood' and HeadOfHouse='Filius Flitwick';


-- Business Question 15: We are looking for boys who are pure blooded and have haircolor as red.

SELECT count(*) as 'number of boys'
FROM student
WHERE gender='Male' AND studentID IN (SELECT studentID FROM student WHERE bloodStatus='Pure-blood' AND hairColor='Red');


-- Business Question 16: College Event Organization team is looking for volunteers to help organizing the event and they are looking for the clubs who has the most number of members with them.

SELECT ClubID, ClubName, MAX(`Number of students`)
FROM (SELECT c.ClubID, c.ClubName,COUNT(*) AS `Number of students`
FROM student s
JOIN club c ON s.clubID=c.ClubID
GROUP BY s.clubID
ORDER BY `Number of students` DESC) avgs;


-- Business Question 17:  A teacher is looking for the number of classes with 3 credits in the semester of 7th year class in order to make changes to the next semester.

SELECT COUNT(*)
FROM class
WHERE credits=3 AND classLevelID=7;


-- Business Question 18: Faculty is interested in knowing the students who got O grades in the 2nd year class in order to celebrate their success by keeping them in the elite club of the college.

SELECT CONCAT(s.firstName," ",s.middleName," ",s.lastName) AS studentName, c.levelName, g.GradeLetter
FROM student s
JOIN classlevel c ON s.classLevelID=c.classLevelID
JOIN grade g ON s.gradeID=g.GradeID
WHERE c.levelName='Second Year' AND g.GradeLetter='O';


-- Business Question 19: School administration is looking to reduce the stress of the professors who have the highest number of students teaching in order to maintain work life balance.

SELECT e.employeeFirstName, e.employeeLastName, COUNT(*) AS 'Number of students'
FROM employee e
JOIN class c ON e.employeeID=c.professorID
JOIN classlevel cl ON c.classlevelID=cl.classLevelID
JOIN student s ON cl.classLevelID=s.classLevelID
GROUP BY c.professorID
ORDER BY `Number of students` DESC;


-- Business Question 20:  School is looking to buy more pets for the school and to decide which pets to buy they want to know how many pets are above the average pet cost.

SELECT COUNT(*) AS 'Number of pets'
FROM pet
WHERE petCost>(SELECT AVG(petCost)
FROM pet);


-- Business Question 21:A iCharm company is visiting campus to place the students who have learn most charms. They want to build a Select statement to find which course teaches most number of charms. Please help iCharm write the SQL statement:

-- Which class teaches the most spells
SELECT className, 
COUNT(SpellID) AS NUMBER_OF_Spells
FROM Spell
INNER JOIN Class
ON Spell.ClassID =Class.ClassID
GROUP BY className
ORDER BY NUMBER_OF_Spells DESC


-- Business Question 22:iPetStore is planning to open a new pet store in town and they are doing research on what is the most owned pet in Hogwarts. Can you please help iPetStore build an inventory of most liked pets:

-- Select the most popular animal in the pet
SELECT animalGroup, 
count(DISTINCT(petId)) AS NumberOfPets
FROM PET
GROUP BY animalGroup
ORDER BY NumberOfPets DESC
LIMIT 1;


-- Business Question 23:Parvati got expelled from the hostel because she was unethical using the charms she learnt in class. She is now only visiting Hogwarts on Tuesday, she is looking for a 3 credit course to register that is offered only on tuesday.

-- Group Project
-- Select all the classes that are offered on Tuesdays and Are 3 credit
SELECT * 
FROM Class
WHERE credits=3 AND scheduledDay='Tuesday';


-- Business Question 24:Voldemort has cast a spell on all students who are “Half-Blood” and have blue eyes. Can you please create a list of such students so that they can be put in special supervision.

-- Make students aware of Voldemort
SELECT firstName, lastName
FROM Student
WHERE bloodStatus='Half-blood' AND eyeColor ='blue';


-- Business Question 25:Hogwarts is planning to recruit new faculty because of a surge in new admissions, they want to check the diversity ratio for female to male for all professors. If the diversity ratio is >2 then recommend to hire female or else hire Any.

-- Diversity ratio
SELECT 
COUNT(CASE WHEN gender='MALE' THEN employeeID END) AS MALES, 
COUNT(CASE WHEN gender='FEMALE' THEN employeeID END) AS FEMALES,
(COUNT(CASE WHEN gender='MALE' THEN employeeID END)/COUNT(CASE WHEN gender='FEMALE' THEN employeeID END)) as Diversity_ratio,
IF ((COUNT(CASE WHEN gender='MALE' THEN employeeID END)/COUNT(CASE WHEN gender='FEMALE' THEN employeeID END))>2, 'HIRE FEMALE', 'HIRE ANY')
FROM `Hogwarts School of Magic`.Employee
WHERE employeeType='Professor';


    
-- ***************************************************
-- Stored Procedures
-- *************************************************** 

#We are creating this procedure in order to make segregation easier. We can divide the pets into 3 categories: expensive, moderate and cheap based on the pet cost. Which #helps us ease the process of deciding the pets.

#Get the category of pets(Expensive, moderate or cheap) based on the pet cost

delimiter //

CREATE PROCEDURE petVal (IN name varchar(30), out name2 varchar(30),out anigroup varchar(25), out petVal int, out category varchar(15))
BEGIN
	set petVal = (select petCost from pet 
    where name=petname);
	
    if petVal > 1000 THEN set category = 'Expensive';
    elseif petVal > 200 then set category = 'Moderate';
    else set category = 'Cheap';
    end if;
    set anigroup = (select animalGroup from pet
    where name=petname);
    set name2=(select petname from pet
    where name=petname);

END //
    
delimiter ;

-- Query invoking the Stored Procedure

call petVal('Crookshanks', @name2,@anigroup, @petVal, @category);
select @name2, @anigroup, @petVal, @category;



-- ***************************************************
-- Stored Functions
-- *************************************************** 

#Function 1:In the administration office, its always hard to find the full name of the students as the full names are generally not called but called only for the accounting #purpose. In order to make the process easier we created a function to get the full name of the students.

#Get the full name of students.

DELIMITER $$
CREATE FUNCTION full_name_fn(firstname VARCHAR(50), middlename VARCHAR(50), lastname VARCHAR(50))
RETURNS VARCHAR(150)
DETERMINISTIC
BEGIN 
DECLARE full_name VARCHAR(150);
IF middlename='' THEN SET full_name = CONCAT(firstname, ' ' ,lastname);
ELSE SET full_name = CONCAT(firstname, ' ', middlename, ' ' ,lastname);
END IF;
RETURN (full_name);
END $$

-- Query invoking the first stored function

SELECT studentID, full_name_fn(firstName, middleName, lastName) AS 'Full Name'
FROM student;


#Function 2: We created a function to find out the house name of each student in order to divide them during the lunch breaks and also while creating different events for #different clubs. We used function instead of joins for easing the process for calling it everytime.

DELIMITER $$
CREATE FUNCTION house_name(house_id INT)
RETURNS VARCHAR(15)
DETERMINISTIC
BEGIN 
DECLARE name VARCHAR(15);
SELECT HouseName
INTO name
FROM house
WHERE house_id=HouseID;
RETURN (name);
END $$

-- Query invoking the second stored function

SELECT house_name(1);
SELECT studentID, full_name_fn(firstName, middleName, lastName) AS 'Full Name', house_name(houseID) AS 'House Name'
FROM student;



-- ***************************************************
-- Trigger
-- *************************************************** 

#School office is facing a severe issue while creating data for the new clubs that are being added to the school everytime. All the letters are not proper in terms of #alphabet casing. In order to resolve this problem we created a function to convert the 1st letter to uppercase and other letters to lowercase irrespective of what is #being given as input.

DELIMITER //

CREATE TRIGGER club_before_insert
BEFORE INSERT on club
FOR EACH ROW
BEGIN
	SET NEW.ClubName = CONCAT(UPPER(SUBSTRING(NEW.ClubName,1,1)),
						LOWER(SUBSTRING(NEW.ClubName FROM 2)));
END//

-- Change Delimiter
DELIMITER ;

-- Query invoking the trigger

-- Insert Data
INSERT INTO club (ClubName)
VALUES ('rUgBY');
-- Select Data
SELECT *
FROM club;











