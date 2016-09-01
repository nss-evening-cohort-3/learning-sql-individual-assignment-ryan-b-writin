/* Which sales agent made the most in sales in 2010? */

SELECT Sales2010.EmployeeName, MAX(Sales2010.TotalSales) FROM (SELECT Employee.LastName ||', '|| Employee.FirstName AS 'EmployeeName', Employee.EmployeeId, SUM(Total) AS 'TotalSales' From Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
WHERE InvoiceDate LIKE '2010%' 
GROUP BY Employee.EmployeeId) AS 'Sales2010';
