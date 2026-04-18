/*
01_Suspend_Resume_Notes.sql
NOTA: Acciones correctivas NO read-only.
- SUSPEND_FROM_APPLY: generalmente ejecutar RESUME en el SECUNDARIO (si la causa ya fue corregida).
- SUSPEND_FROM_CAPTURE: suele ser del PRIMARIO.
Ejemplo:
  ALTER DATABASE [MiDB] SET HADR RESUME;
Usar con criterio y registrar evidencia.
*/
SELECT 'Ver comentarios del script.' AS Nota;
