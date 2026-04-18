# Playbook – SUSPEND_FROM_APPLY (Secundario)

## Síntoma
- DB en secundario: NOT SYNCHRONIZING / NOT_HEALTHY
- is_suspended = 1
- suspend_reason_desc = SUSPEND_FROM_APPLY

## Flujo
1) Revisar errorlog por causa (112 / 9002 / 823 / 824 / permisos / storage).
2) Corregir causa (espacio, autogrowth %, IO, etc.).
3) Reanudar:
   - Ejecutar en el SECUNDARIO:
     ALTER DATABASE [DB] SET HADR RESUME;
4) Monitorear redo_queue_size y last_redone_time.
