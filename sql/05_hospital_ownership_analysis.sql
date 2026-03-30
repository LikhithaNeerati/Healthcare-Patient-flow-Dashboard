SELECT 
    h.Hospital_Ownership,
    COUNT(DISTINCT i.Rndrng_Prvdr_CCN) AS hospital_count,
    SUM(i.Tot_Dschrgs) AS total_admissions,
    ROUND(AVG(i.Avg_Tot_Pymt_Amt), 2) AS avg_payment
FROM inpatient_data i
JOIN Hospital_General_Information h 
    ON PRINTF('%06d', i.Rndrng_Prvdr_CCN) = PRINTF('%06d', h.Facility_ID)
GROUP BY h.Hospital_Ownership
ORDER BY total_admissions DESC;
