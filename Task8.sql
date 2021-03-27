INSERT INTO Person (Person_ID, Last_Name, First_Name,Phone, Address) SELECT max(Person_ID) +1, 'Pugacheva', 'Anna', '8999 ', ' ' FROM Person;
SELECT * FROM Person;


UPDATE Order1 Set Comments = '(s)' + Comments WHERE Employee_ID IN (SELECT Order1.Employee_ID FROM Order1 JOIN Employee On Employee.Employee_ID = Order1.Employee_ID WHERE
Spec = 'student');

SELECT Order_ID, Comments, Spec FROM Order1 JOIN Employee on Employee.Employee_ID = Order1.Employee_ID;


CREATE TABLE Files(
    Files_ID                INTEGER         NOT NULL,
    Person_ID               INTEGER         NOT NULL,
    Type_Doc                VARCHAR(20)     NOT NULL,
    Seria_Doc               VARCHAR(50)     NOT NULL,
    Description	            VARCHAR(50),
CONSTRAINT Files_PK PRIMARY KEY (Files_ID)
);

ALTER TABLE Files ADD CONSTRAINT FK_Files_Person 
    FOREIGN KEY (Person_ID)
    REFERENCES Person(Person_ID) ON DELETE CASCADE;

INSERT INTO Files SELECT '1',  '11' , 'pasport', '1111', '';
INSERT INTO Files SELECT '2', '5', 'snils', '234-689', '';

SELECT * FROM Files;

DELETE FROM Person WHERE Person_ID = 11;
SELECT * FROM Person;
SELECT * FROM Files;