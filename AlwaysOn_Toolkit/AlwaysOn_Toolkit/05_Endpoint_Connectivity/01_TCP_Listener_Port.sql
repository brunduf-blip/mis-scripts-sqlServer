/*
01_TCP_Listener_Port.sql
Objetivo: Ver puertos de listeners (AG) y endpoints.
*/
SET NOCOUNT ON;

SELECT
    'AG Listener' AS item_type,
    l.dns_name AS item_name,
    l.port,
    NULL AS endpoint_name
FROM sys.availability_group_listeners l
UNION ALL
SELECT
    'Endpoint' AS item_type,
    NULL,
    e.port,
    e.name
FROM sys.endpoints e
WHERE e.type_desc IN ('DATABASE_MIRRORING','SERVICE_BROKER')
ORDER BY item_type;
