USE LakeDistrict;

SELECT
	r.Region_Name,
    w.Wainwright_Name,
    w.Height_m,
    w.Date_Completed
FROM
	Region r
INNER JOIN Wainwrights w ON w.Region_ID = r.Region_ID
ORDER BY Region_Name
	