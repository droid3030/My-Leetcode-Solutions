# Write your MySQL query statement below
SELECT Firstname, LastName, City, State FROM Person LEFT JOIN Address ON Person.personId = Address.PersonId;