CREATE VIEW Dogs AS SELECT Nick, Age, Breed, Last_Name, First_Name FROM Pet JOIN Owner ON Owner.Owner_ID = Pet.Owner_ID JOIN Person on Person.Person_ID = Owner.Person_ID
JOIN Pet_Type on Pet_Type.Pet_Type_ID = Pet.Pet_Type_ID WHERE Pet_Type.Name = 'Dog';
 
SELECT Nick, Last_Name FROM Dogs WHERE Breed = 'poodle';

CREATE VIEW seller AS SELECT Last_Name, First_Name, COUNT(Is_Done) AS COUNT, AVG(Mark) AS AVG FROM Person JOIN Employee on Person.Person_ID = Employee.Person_ID JOIN Order1 on Employee.Employee_ID = Order1.Employee_ID
WHERE Is_Done = 1
GROUP BY Last_Name, First_Name;
 
SELECT * FROM seller ORDER BY AVG DESC;

CREATE VIEW customer AS SELECT  Last_Name, First_Name, Phone, Address  FROM Person
JOIN Owner on Owner.Person_ID = Person.Person_ID;

UPDATE customer SET Address = '?' WHERE Address = '';