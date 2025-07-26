#Script 2: Frequently Used Queries

#Concatenation

SELECT CONCAT(Name, ' - ', Contact) AS CustomerDetails FROM Customer;

#Update Data

UPDATE Policy SET Premium = 5500.00 WHERE PolicyID = 1;

#Delete a Row

DELETE FROM Nominee WHERE NomineeID = 1;

#Search Conditions

SELECT * FROM Customer WHERE Nationality = 'Indian';

#Aggregate Functions

SELECT PolicyID, COUNT(*) AS TotalCustomers FROM CustomerPolicy GROUP BY PolicyID;

#Nested Subqueries

SELECT Name FROM Customer WHERE CustomerID IN (SELECT CustomerID FROM CustomerPolicy WHERE Status = 'Active');

#Joins

SELECT c.Name, p.PolicyName
FROM Customer c
JOIN CustomerPolicy cp ON c.CustomerID = cp.CustomerID
JOIN Policy p ON cp.PolicyID = p.PolicyID;



