/*
00_Replica_Connectivity.sql
Objetivo: Estado de conectividad entre réplicas.
*/
SET NOCOUNT ON;

SELECT
    ar.replica_server_name,
    ars.role_desc,
    ars.connected_state_desc,
    ars.operational_state_desc,
    ars.recovery_health_desc,
    ars.synchronization_health_desc,
    ars.last_connect_error_number,
    ars.last_connect_error_description,
    ars.last_connect_error_timestamp
FROM sys.availability_replicas ar
JOIN sys.dm_hadr_availability_replica_states ars
  ON ar.replica_id = ars.replica_id
ORDER BY ar.replica_server_name;
