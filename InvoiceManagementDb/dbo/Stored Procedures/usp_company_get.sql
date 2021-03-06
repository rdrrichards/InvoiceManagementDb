﻿

/*****************************************************************
**	Table Name: company
**	Procedure Name: usp_company_get
**	Author: Richard Richards
**	Created: 06/23/2015
**	Copyright: QIQO Software, (c) 2015
******************************************************************/

CREATE PROC [dbo].[usp_company_get]
	@company_key int
AS
SET NOCOUNT ON

SELECT [company_key], 
	[company_code], 
	[company_name], 
	[company_desc], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM company
WHERE [company_key] = @company_key


SET NOCOUNT OFF





GO
GRANT EXECUTE
    ON OBJECT::[dbo].[usp_company_get] TO [businessuser]
    AS [dbo];

