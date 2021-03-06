﻿


/*****************************************************************
**	Table Name: contact
**	Procedure Name: usp_contact_all_by_entity 1, 3
**	Author: Richard Richards
**	Created: 06/23/2015
**	Copyright: QIQO Software, (c) 2015
******************************************************************/

CREATE PROC [dbo].[usp_contact_all_by_entity]
	@entity_key int,
	@entity_type_key int
AS
SET NOCOUNT ON

SELECT [contact_key], 
	[entity_key], 
	[entity_type_key], 
	[contact_type_key], 
	[contact_value], 
	CAST([contact_default_flg] AS int) AS [contact_default_flg], 
	CAST([contact_active_flg] AS int) AS [contact_active_flg], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM contact 
WHERE entity_key = @entity_key
AND entity_type_key = @entity_type_key


SET NOCOUNT OFF






GO
GRANT EXECUTE
    ON OBJECT::[dbo].[usp_contact_all_by_entity] TO [businessuser]
    AS [dbo];

