/*
02_DBs_Summary_ByAG.sql
Objetivo: Resumen por base (sync state, health, suspended). Ejecutar en cada réplica.
*/
SET NOCOUNT ON;

SELECT
    ag.name AS AG,
    ar.replica_server_name AS Replica,
    DB_NAME(drs.database_id) AS [DB],
    drs.synchronization_state_desc,
    drs.synchronization_health_desc,
    drs.is_suspended,
    drs.suspend_reason_desc
FROM sys.dm_hadr_database_replica_states drs
JOIN sys.availability_replicas ar
  ON drs.replica_id = ar.replica_id
JOIN sys.availability_groups ag
  ON ar.group_id = ag.group_id
ORDER BY ag.name, ar.replica_server_name, [DB];
