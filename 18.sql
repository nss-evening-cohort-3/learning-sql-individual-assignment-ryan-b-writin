/* Provide a query that shows total sales made by each sales agent. */

SELECT Employee.LastName ||', '|| Employee.FirstName AS 'EmployeeName', 
ROUND((SUM(Total) * InvoiceLine.UnitPrice),2) AS 'TotalPerRep' FROM Invoice
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
JOIN Employee ON Customer.SupportRepId = Employee.EmployeeId
JOIN InvoiceLine ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY EmployeeName 
