-- Why and when it was cancelled
SELECT event_time, query_duration_ms, user, exception
FROM clusterAllReplicas('hera_cluster_1S_2R', system.query_log)
WHERE query_id = 'd96cba96-343d-4e88-9f63-5bd0edcc506a';

-- Real state of the restore on each node
SELECT hostName(), id, status, error, start_time, end_time
FROM clusterAllReplicas('hera_cluster_1S_2R', system.backups)
ORDER BY start_time DESC;
