/*
01_WriteLog_and_IO_Waits.sql
Objetivo: Esperas relacionadas a log/IO comunes en problemas de AlwaysOn.
*/
SET NOCOUNT ON;

SELECT TOP (50)
    wait_type,
    waiting_tasks_count,
    wait_time_ms,
    max_wait_time_ms
FROM sys.dm_os_wait_stats
WHERE wait_type IN ('WRITELOG','HADR_SYNC_COMMIT','HADR_LOGCAPTURE_WAIT','HADR_REDO_WAIT','IO_COMPLETION','PAGEIOLATCH_SH','PAGEIOLATCH_EX')
ORDER BY wait_time_ms DESC;
