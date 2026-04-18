/*
00_ReadErrorLog_AlwaysOn.sql
Objetivo: Buscar strings frecuentes en errorlog (ajustar según necesidad).
*/
EXEC xp_readerrorlog 0, 1, N'Always On';
EXEC xp_readerrorlog 0, 1, N'HADR';
EXEC xp_readerrorlog 0, 1, N'SUSPEND';
EXEC xp_readerrorlog 0, 1, N'redo';
EXEC xp_readerrorlog 0, 1, N'Operating system error 112';
EXEC xp_readerrorlog 0, 1, N'9002';
EXEC xp_readerrorlog 0, 1, N'823';
EXEC xp_readerrorlog 0, 1, N'824';
EXEC xp_readerrorlog 0, 1, N'825';
