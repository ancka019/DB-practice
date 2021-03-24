 SELECT Nick, Name FROM Pet, Pet_Type WHERE Nick = 'Partizan' AND Pet.Pet_Type_ID = Pet_Type.Pet_Type_ID;
 
 SELECT Nick, Breed, Age FROM Pet, Pet_Type WHERE Pet_Type.Name = 'DOG' AND Pet.Pet_Type_ID = Pet_Type.Pet_Type_ID;
 
 SELECT AVG(convert(decimal, AGE)) FROM Pet, Pet_Type WHERE Pet_Type.Name = 'CAT' AND Pet.Pet_Type_ID = Pet_Type.Pet_Type_ID;
 
 SELECT Time_Order, Last_Name FROM Order1 
 JOIN Employee on Order1.Employee_ID = Employee.Employee_ID 
 JOIN Person on Employee.Person_ID = Person.Person_ID WHERE Is_Done = 0;
 
 SELECT First_Name, Last_Name, Phone  FROM Pet JOIN Pet_Type on Pet_Type.Pet_Type_ID = Pet.Pet_Type_ID
JOIN Owner on Owner.Owner_ID = Pet.Owner_ID
JOIN Person on Person.Person_ID = Owner.Person_ID
WHERE Name = 'DOG';

SELECT Name, Nick FROM Pet_Type LEFT JOIN Pet on Pet.Pet_Type_ID = Pet_Type.Pet_Type_ID;