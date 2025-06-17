-- This SQL query retrieves the names of workspaces along with the last updated timestamp and external ID for each state version.


SELECT
  w.name AS workspace_name,
  sv.updated_at,
  sv.external_id
FROM
  rails.state_versions sv
JOIN
  rails.workspaces w
ON
  sv.workspace_id = w.id;

-- this SQL query retrieves the names of workspaces along with the last updated timestamp and external ID for a specific state version. 
SELECT
  w.name AS workspace_name,
  sv.updated_at,
  sv.external_id
FROM
  rails.state_versions sv
JOIN
  rails.workspaces w
ON
  sv.workspace_id = w.id
where external_id = '<your_state_version_external_id>';
