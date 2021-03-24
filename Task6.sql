SELECT Name, Comments, Mark, ROW_NUMBER() OVER(ORDER BY Mark) AS #ROW FROM Service JOIN Order1 ON Service.Service_ID = Order1.Service_ID 
WHERE Is_Done = 1  GROUP BY Name, Mark, Comments; 

SELECT Age, COUNT(Nick) FROM Pet GROUP BY Age;

SELECT Age, Name, COUNT(Name) FROM Pet JOIN Pet_Type on Pet_Type.Pet_Type_ID = Pet.Pet_Type_ID  GROUP BY Age, Name;

SELECT Pet_Type.Name, AVG(convert(decimal, Pet.AGE)) FROM Pet, Pet_Type WHERE Pet_Type.Pet_Type_ID = Pet.Pet_Type_ID 
GROUP BY Pet_Type.Name HAVING  AVG(convert(decimal, Pet.AGE)) < 6;

SELECT Last_Name, COUNT(Is_Done) FROM Person JOIN Employee on Person.Person_ID = Employee.Person_ID JOIN Order1 on Employee.Employee_ID = Order1.Employee_ID
GROUP BY Last_Name HAVING COUNT(Is_Done) > 5;

SELECT Order1.Mark, Service.Name, Order1.Time_Order FROM Order1, Service 
WHERE  (Service.Service_ID = Order1.Service_ID) and (Time_Order BETWEEN '2020-09-04 11:00:00.000' and '2020-09-10 11:00:00.000') and Is_Done = 1;