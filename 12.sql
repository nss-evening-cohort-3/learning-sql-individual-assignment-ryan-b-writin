/* Provide a query that includes the track name with each invoice line item. */
SELECT InvoiceLineId, Name, InvoiceLine.TrackId FROM InvoiceLine JOIN Track ON InvoiceLine.TrackId = Track.TrackId
ORDER BY InvoiceLineId;
