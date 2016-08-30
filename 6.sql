/* Provide a query showing the invoices of customers who are from Brazil. */

SELECT * FROM Invoice JOIN Customer ON Customer.CustomerId = Invoice.CustomerId WHERE Customer.Country = "Brazil";
