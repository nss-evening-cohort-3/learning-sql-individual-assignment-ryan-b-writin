/* Which sales agent made the most in sales over all? */

SELECT Sales.EmployeeName, MAX(Sales.TotalSales) FROM (SELECT Employee.LastName ||', '|| Employee.FirstName AS 'EmployeeName', Employee.EmployeeId, SUM(Total) AS 'TotalSales' From Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
GROUP BY Employee.EmployeeId) AS 'Sales';
