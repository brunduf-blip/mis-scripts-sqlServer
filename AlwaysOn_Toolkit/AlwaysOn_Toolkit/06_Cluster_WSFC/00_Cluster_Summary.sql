/*
00_Cluster_Summary.sql
Objetivo: Información del cluster WSFC visto desde SQL.
*/
SET NOCOUNT ON;

SELECT * FROM sys.dm_hadr_cluster;
SELECT * FROM sys.dm_hadr_cluster_members;
SELECT * FROM sys.dm_hadr_cluster_networks;
