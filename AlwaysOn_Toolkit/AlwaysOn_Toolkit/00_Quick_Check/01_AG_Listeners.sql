/*
01_AG_Listeners.sql
Objetivo: Validar listeners e IPs asociados.
*/
SET NOCOUNT ON;

SELECT
    ag.name AS AG,
    l.dns_name,
    l.port,
    ip.ip_address,
    ip.subnet_mask,
    ip.state_desc
FROM sys.availability_groups ag
JOIN sys.availability_group_listeners l
  ON ag.group_id = l.group_id
JOIN sys.availability_group_listener_ip_addresses ip
  ON l.listener_id = ip.listener_id
ORDER BY ag.name, l.dns_name;
