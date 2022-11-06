USE LakeDistrict;

SELECT
	r.Region_Name AS 'Region',
    w.Wainwright_Name AS 'Wainwright',
    w.Height_m AS 'Height (m)',
    w.Date_Completed AS 'Date Completed'
FROM
	Region r
INNER JOIN Wainwrights w ON w.Region_ID = r.Region_ID
    WHERE w.Height_m > (
	SELECT
		AVG(w.Height_m) AS 'Average Height (m)'
	FROM
		Wainwrights w
	)
ORDER BY
	Height_m ASC;