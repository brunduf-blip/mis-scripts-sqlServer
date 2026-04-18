/*
02_Log_Reuse_Wait.sql
Objetivo: Ver por qué no trunca el log.
*/
SET NOCOUNT ON;

SELECT
    name,
    recovery_model_desc,
    log_reuse_wait_desc
FROM sys.databases
ORDER BY name;
