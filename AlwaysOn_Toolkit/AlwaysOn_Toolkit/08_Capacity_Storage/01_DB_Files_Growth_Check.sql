/*
01_DB_Files_Growth_Check.sql
Objetivo: Detectar crecimiento en % (riesgoso en logs grandes).
*/
SET NOCOUNT ON;

SELECT
    DB_NAME(database_id) AS [DB],
    type_desc,
    name AS logical_name,
    physical_name,
    size/128.0 AS size_mb,
    growth,
    is_percent_growth
FROM sys.master_files
ORDER BY is_percent_growth DESC, size_mb DESC;
