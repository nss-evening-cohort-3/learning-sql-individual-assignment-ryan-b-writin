SELECT Customer.FirstName ||" "|| Customer.LastName AS 'Customer Full Name',Country,InvoiceID,InvoiceDate,BillingCountry FROM Invoice
JOIN Customer 
ON Customer.CustomerId == Invoice.CustomerID WHERE Customer.Country IS "Brazil"

/* Provide a query showing the Invoices of customers who are from Brazil. The resultant table should show the customer's full name, Invoice ID, Date of the invoice and billing country. */
