/*
01_Replica_Endpoints_Config.sql
Objetivo: Ver endpoint_url/config de cada réplica del AG.
*/
SET NOCOUNT ON;

SELECT
    ag.name AS AG,
    ar.replica_server_name,
    ar.endpoint_url,
    ar.availability_mode_desc,
    ar.failover_mode_desc,
    ar.session_timeout,
    ar.primary_role_allow_connections_desc,
    ar.secondary_role_allow_connections_desc
FROM sys.availability_groups ag
JOIN sys.availability_replicas ar
  ON ag.group_id = ar.group_id
ORDER BY ag.name, ar.replica_server_name;
