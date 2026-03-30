SELECT 
    DRG_Desc,
    SUM(Tot_Dschrgs) AS total_cases
FROM inpatient_data
GROUP BY DRG_Desc
ORDER BY total_cases DESC
LIMIT 10;
