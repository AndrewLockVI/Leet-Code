--Given all leads return the
--number of unique leads by brand
--and employee
SELECT DailySales.date_id, DailySales.make_name, COUNT(DISTINCT DailySales.lead_id) as unique_leads, COUNT(DISTINCT DailySales.partner_id) as unique_partners
FROM DailySales
GROUP BY DailySales.make_name, DailySales.date_id
