SELECT 
    Rndrng_Prvdr_CCN,
    Rndrng_Prvdr_State_Abrvtn,
    SUM(Tot_Dschrgs) AS total_admissions
FROM Inpatient_Data
GROUP BY Rndrng_Prvdr_State_Abrvtn
ORDER BY total_admissions DESC;
