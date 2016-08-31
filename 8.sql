/* Provide a query that shows the Invoice Total, 
Customer name, Country and Sale Agent name for all invoices and customers. */

SELECT InvoiceId, Customer.LastName ||', '|| Customer.FirstName AS CustomerName, 
Employee.LastName ||', '|| Employee.LastName AS SalesAgent, Customer.Country, 
Invoice.Total AS 'Total For This Invoice', ROUND(SUM(Total),2) AS 'Total For This Customer' FROM Invoice 
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
JOIN Customer ON Invoice.CustomerId = Customer.CustomerId
GROUP BY Customer.CustomerId ORDER BY InvoiceId;
