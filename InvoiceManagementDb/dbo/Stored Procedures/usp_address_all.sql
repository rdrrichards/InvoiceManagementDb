﻿

/*****************************************************************
**	Table Name: address
**	Procedure Name: usp_address_all
**	Author: Richard Richards
**	Created: 06/23/2015
**	Copyright: QIQO Software, (c) 2015
******************************************************************/

CREATE PROC [dbo].[usp_address_all]
AS
SET NOCOUNT ON

SELECT [address_key], 
	[address_type_key], 
	[entity_key], 
	[entity_type_key], 
	[address_line_1], 
	[address_line_2], 
	[address_line_3], 
	[address_line_4], 
	[address_city], 
	[address_state_prov], 
	[address_county], 
	[address_country], 
	[address_postal_code], 
	[address_notes], 
	--[address_default_flg], 
	--[address_active_flg], 
	CAST([address_default_flg] AS int) AS [address_default_flg], 
	CAST([address_active_flg] AS int) AS [address_active_flg], 
	[audit_add_user_id], 
	[audit_add_datetime], 
	[audit_update_user_id], 
	[audit_update_datetime]
FROM address


SET NOCOUNT OFF





GO
GRANT EXECUTE
    ON OBJECT::[dbo].[usp_address_all] TO [businessuser]
    AS [dbo];

