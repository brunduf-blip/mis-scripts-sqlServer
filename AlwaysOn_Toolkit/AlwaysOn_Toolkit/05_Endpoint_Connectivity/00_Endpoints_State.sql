/*
00_Endpoints_State.sql
Objetivo: Ver endpoints (incluye DATABASE_MIRRORING / HADR).
*/
SET NOCOUNT ON;

SELECT
    name,
    type_desc,
    state_desc,
    port,
    is_admin_endpoint
FROM sys.endpoints
ORDER BY type_desc, name;
