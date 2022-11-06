USE LakeDistrict;

SELECT 
	r.Region_Name AS 'Region',
	w.Wainwright_Name AS 'Wainwright',
    w.Height_m AS 'Height(m)',
    w.Date_Completed AS 'Date Completed'
FROM 
	Region r
INNER JOIN Wainwrights w ON w.Region_ID = r.Region_ID
WHERE Date_Completed IS NULL
ORDER BY Region_Name
