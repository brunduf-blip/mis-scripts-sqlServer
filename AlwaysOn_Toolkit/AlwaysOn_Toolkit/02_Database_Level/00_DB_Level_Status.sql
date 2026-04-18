/*
00_DB_Level_Status.sql
Objetivo: Estado por base en esta réplica.
*/
SET NOCOUNT ON;

SELECT
    DB_NAME(database_id) AS [DB],
    database_id,
    synchronization_state_desc,
    synchronization_health_desc,
    is_suspended,
    suspend_reason_desc,
    last_sent_time,
    last_received_time,
    last_hardened_time,
    last_redone_time
FROM sys.dm_hadr_database_replica_states
ORDER BY [DB];
