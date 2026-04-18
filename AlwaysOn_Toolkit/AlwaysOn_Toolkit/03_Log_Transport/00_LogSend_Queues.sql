/*
00_LogSend_Queues.sql
Objetivo: Diagnóstico de envío de log (primario suele ser más relevante).
*/
SET NOCOUNT ON;

SELECT
    DB_NAME(database_id) AS [DB],
    log_send_queue_size,
    log_send_rate,
    last_sent_time
FROM sys.dm_hadr_database_replica_states
ORDER BY log_send_queue_size DESC;
