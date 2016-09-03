/* Which sales agent made the most in sales in 2009? */

SELECT Sales2009.EmployeeName, MAX(Sales2009.TotalSales) FROM 
(SELECT Employee.LastName ||', '|| Employee.FirstName AS 'EmployeeName', 
Employee.EmployeeId, ROUND(SUM(Total) * InvoiceLine.UnitPrice, 2) AS 'TotalSales' From Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
WHERE InvoiceDate LIKE '2009%' 
GROUP BY Employee.EmployeeId) AS 'Sales2009'
