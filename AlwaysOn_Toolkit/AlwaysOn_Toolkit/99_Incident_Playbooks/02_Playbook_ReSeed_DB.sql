/*
02_Playbook_ReSeed_DB.sql
Playbook genérico de re-seed manual (FULL + LOG).
ATENCIÓN: Editar nombres AG/DB/rutas. Ejecutar con Change/ventana y evidencia.

-- PRIMARIO:
ALTER AVAILABILITY GROUP [AG_NAME] REMOVE DATABASE [DB_NAME];

BACKUP DATABASE [DB_NAME] TO DISK='\\share\path\DB_full.bak' WITH INIT, COMPRESSION;
BACKUP LOG      [DB_NAME] TO DISK='\\share\path\DB_log.trn'  WITH INIT, COMPRESSION;

-- SECUNDARIO:
DROP DATABASE [DB_NAME];

RESTORE DATABASE [DB_NAME]
FROM DISK='\\share\path\DB_full.bak'
WITH NORECOVERY,
MOVE 'logical_data' TO 'D:\SQLData\DB.mdf',
MOVE 'logical_log'  TO 'L:\SQLLogs\DB.ldf';

RESTORE LOG [DB_NAME]
FROM DISK='\\share\path\DB_log.trn'
WITH NORECOVERY;

-- PRIMARIO:
ALTER AVAILABILITY GROUP [AG_NAME] ADD DATABASE [DB_NAME];
*/
SELECT 'Editá y usá con ventana controlada.' AS Nota;
