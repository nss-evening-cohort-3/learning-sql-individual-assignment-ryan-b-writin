/* Provide a query that shows the # of customers assigned to each sales agent. */

SELECT Employee.LastName ||', '|| Employee.FirstName AS EmployeeName, COUNT(Customer.CustomerId) AS 'NumOfCustomers' FROM Customer
JOIN Employee ON Employee.EmployeeId = Customer.SupportRepId
GROUP BY SupportRepId;
