/*
01_Send_Receive_Times.sql
Objetivo: Tiempos de envío/recepción/harden/redo (útil para ver dónde se frena).
*/
SET NOCOUNT ON;

SELECT
    DB_NAME(database_id) AS [DB],
    last_sent_time,
    last_received_time,
    last_hardened_time,
    last_redone_time
FROM sys.dm_hadr_database_replica_states
ORDER BY [DB];
