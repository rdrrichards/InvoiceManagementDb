﻿

/*****************************************************************
**	Table Name: attribute_type
**	Procedure Name: usp_attribute_type_all
**	Author: Richard Richards
**	Created: 06/23/2015
**	Copyright: QIQO Software, (c) 2015
******************************************************************/

CREATE PROC [dbo].[usp_attribute_type_all]
AS
SET NOCOUNT ON

SELECT [attribute_type_key], 
	[attribute_type_category], 
	[attribute_type_code], 
	[attribute_type_name], 
	[attribute_type_desc], 
	[attribute_data_type_key],
	[attribute_default_format],
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM attribute_type


SET NOCOUNT OFF





GO
GRANT EXECUTE
    ON OBJECT::[dbo].[usp_attribute_type_all] TO [businessuser]
    AS [dbo];

