/*
00_HADR_Waits.sql
Objetivo: Esperas HADR (útil para detectar latencia de commit, redo, etc.).
*/
SET NOCOUNT ON;

SELECT TOP (50)
    wait_type,
    waiting_tasks_count,
    wait_time_ms,
    max_wait_time_ms,
    signal_wait_time_ms
FROM sys.dm_os_wait_stats
WHERE wait_type LIKE 'HADR%'
ORDER BY wait_time_ms DESC;
