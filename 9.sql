SELECT COUNT(*) FROM Invoice WHERE InvoiceDate LIKE '2009%' OR '2011%'
SELECT SUM(Total) FROM Invoice WHERE InvoiceDate LIKE '2009%'
SELECT SUM(Total) FROM Invoice WHERE InvoiceDate LIKE '2011%'

How many Invoices were there in 2009 and 2011? What are the respective total sales for each of those years?
