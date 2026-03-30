SELECT 
    DRG_Desc,
    ROUND(AVG(Avg_Submtd_Cvrd_Chrg), 2) AS avg_charges,
    ROUND(AVG(Avg_Tot_Pymt_Amt), 2) AS avg_payments,
    SUM(Tot_Dschrgs) AS total_cases
FROM inpatient_data
GROUP BY DRG_Desc
ORDER BY total_cases DESC
LIMIT 20;
