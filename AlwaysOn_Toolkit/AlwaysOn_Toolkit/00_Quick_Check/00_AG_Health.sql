/*
00_AG_Health.sql
Objetivo: Estado general de AG y réplicas. Ejecutar en cualquier réplica.
*/
SET NOCOUNT ON;

SELECT
    ag.name AS AG,
    ar.replica_server_name,
    ar.availability_mode_desc,
    ar.failover_mode_desc,
    ars.role_desc,
    ars.connected_state_desc,
    ars.synchronization_health_desc,
    ars.operational_state_desc,
    ars.recovery_health_desc,
    ars.last_connect_error_number,
    ars.last_connect_error_description,
    ars.last_connect_error_timestamp
FROM sys.availability_groups ag
JOIN sys.availability_replicas ar
  ON ag.group_id = ar.group_id
JOIN sys.dm_hadr_availability_replica_states ars
  ON ar.replica_id = ars.replica_id
ORDER BY ag.name, ar.replica_server_name;
