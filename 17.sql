/* Provide a query that shows all Invoices but includes the # of invoice line items. */

SELECT Invoice.InvoiceId, COUNT(*) AS 'No. of Line Items' FROM InvoiceLine
JOIN Invoice ON Invoice.InvoiceId = InvoiceLine.InvoiceId
GROUP BY Invoice.InvoiceId
