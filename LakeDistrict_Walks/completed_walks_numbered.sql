USE LakeDistrict;

CREATE VIEW completed_walks 
AS 
	SELECT 
		row_number() OVER (ORDER BY w.Date_Completed) AS 'Number',   
		w.Wainwright_Name AS 'Wainwright',
		w.Height_m AS 'Height (m)',
		w.Date_Completed AS 'Date Completed'
	FROM 
		Wainwrights w
	WHERE Date_Completed IS NOT NULL


	