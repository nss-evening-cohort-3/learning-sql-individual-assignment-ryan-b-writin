/* Provide a query that shows total sales made by each sales agent. */

SELECT Employee.LastName ||', '|| Employee.FirstName AS 'EmployeeName', 
ROUND(SUM(Total),2) AS 'TotalPerRep' FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY EmployeeName 
