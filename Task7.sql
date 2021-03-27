--1
SELECT Mark FROM Order1, (SELECT Spec, Employee_ID FROM Employee WHERE Spec = 'student') 
 As eee WHERE Order1.Employee_ID = eee.Employee_ID and Is_Done = 1;

--2
SELECT Last_Name FROM Person JOIN Employee ON Employee.Person_ID = Person.Person_ID WHERE Employee_ID NOT IN (SELECT Employee_ID FROM Order1);

--3
SELECT Name, Order1.Time_Order, customer.Last_Name, Pet.Nick, own.Last_Name FROM Service JOIN Order1 on Service.Service_ID = Order1.Service_ID
JOIN Employee on Employee.Employee_ID = Order1.Employee_ID
JOIN Person AS customer on customer.Person_ID = Employee.Person_ID
JOIN Pet ON Pet.Pet_ID = Order1.Pet_ID
JOIN Owner on  Owner.Owner_ID = Order1.Owner_ID JOIN Person AS own ON own.Person_ID = Owner.Person_ID;

--4
SELECT Comments FROM Order1 WHERE Comments IS NOT NULL AND Comments != '' 
UNION 
SELECT Description FROM Owner WHERE Description IS NOT NULL AND Description != ''
UNION 
SELECT Description FROM Pet WHERE Description IS NOT NULL AND Description != '';

--5
SELECT Person.First_Name, Person.Last_Name FROM Employee 
JOIN Person ON Person.Person_ID = Employee.Person_ID
WHERE EXISTS (SELECT * FROM Order1 WHERE Order1.Employee_ID = Employee.Employee_ID AND Order1.Mark = 5);
