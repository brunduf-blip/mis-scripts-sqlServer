# Playbook – SSISDB y advertencia DMK en Wizard (SSMS)

## Mensaje típico
"This database is encrypted by database master key, you need to provide valid password when adding it to the availability group"

## Explicación
SSISDB (SSIS Catalog) crea una Database Master Key (DMK). Es normal que el wizard pida password para poder abrirla y asegurar funcionamiento en el secundario.

## Acción
- Ingresar la password de la DMK usada al crear el catálogo.
- Luego, en el secundario, asegurar que la DMK quede protegida por el Service Master Key:
  USE SSISDB;
  OPEN MASTER KEY DECRYPTION BY PASSWORD = '...';
  ALTER MASTER KEY ADD ENCRYPTION BY SERVICE MASTER KEY;
