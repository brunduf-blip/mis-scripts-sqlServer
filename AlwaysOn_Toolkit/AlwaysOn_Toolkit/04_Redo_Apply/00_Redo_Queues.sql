/*
00_Redo_Queues.sql
Objetivo: Diagnóstico de REDO (secundario).
*/
SET NOCOUNT ON;

SELECT
    DB_NAME(database_id) AS [DB],
    redo_queue_size,
    redo_rate,
    last_redone_time,
    is_suspended,
    suspend_reason_desc
FROM sys.dm_hadr_database_replica_states
ORDER BY redo_queue_size DESC;
