/* Provide a query that shows the invoices associated with each sales agent. 
The resultant table should include the Sales Agent's full name. */

SELECT Employee.LastName|| ', ' ||Employee.FirstName AS 'EmployeeName',InvoiceId FROM Customer JOIN Invoice ON Invoice.CustomerId = Customer.CustomerId 
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
ORDER BY Employee.LastName,InvoiceID;
