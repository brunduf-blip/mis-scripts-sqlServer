/*
01_DB_Specific_Status_Template.sql
Objetivo: Estado detallado para una DB específica.
Reemplazar @db por el nombre de base (ej: 'SSISDB'). Ejecutar en ambas réplicas.
*/
SET NOCOUNT ON;
DECLARE @db sysname = N'<<DB_NAME>>';

SELECT
    DB_NAME(drs.database_id) AS [DB],
    ar.replica_server_name AS Replica,
    drs.is_suspended,
    drs.suspend_reason_desc,
    drs.synchronization_state_desc,
    drs.synchronization_health_desc,
    drs.log_send_queue_size,
    drs.log_send_rate,
    drs.redo_queue_size,
    drs.redo_rate,
    drs.last_sent_time,
    drs.last_received_time,
    drs.last_hardened_time,
    drs.last_redone_time
FROM sys.dm_hadr_database_replica_states drs
JOIN sys.availability_replicas ar
  ON drs.replica_id = ar.replica_id
WHERE drs.database_id = DB_ID(@db)
ORDER BY ar.replica_server_name;
