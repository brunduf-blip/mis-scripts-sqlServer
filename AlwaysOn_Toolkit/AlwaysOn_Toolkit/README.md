# Always On Diagnostic Toolkit
Fecha: 2026-02-22

Toolkit práctico para diagnóstico y troubleshooting de SQL Server Always On (Availability Groups).
Organizado de menor a mayor complejidad, por carpetas. Cada script es "read-only" salvo donde se indique explícitamente.

## Uso recomendado (escalera)
1) 00_Quick_Check
2) 01_Replica_Status
3) 02_Database_Level
4) 03_Log_Transport
5) 04_Redo_Apply
6) 05_Endpoint_Connectivity
7) 08_Capacity_Storage
8) 06_Cluster_WSFC
9) 07_Performance
10) 09_Advanced_Recovery
11) 99_Incident_Playbooks (acciones correctivas / re-seed)

## Notas
- Ejecutar en el primario y secundario cuando aplique (se indica en comentarios).
- Si usás SSMS Wizard para agregar bases cifradas con DMK (ej: SSISDB), es normal que pida password de la DMK.
