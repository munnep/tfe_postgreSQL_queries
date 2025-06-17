-- This SQL query retrieves the details with a configuration version's external ID, the run's external ID, the creation date of the run, and the workspace name associated with that configuration version.
SELECT
  cv.external_id ,
  r.external_id as run_id,
  r.created_at as created_at,
  w.name as workspace_name
FROM
  rails.configuration_versions cv
JOIN
  rails.runs r ON cv.id = r.configuration_version_id
JOIN
  rails.workspaces w ON r.workspace_id = w.id
WHERE
  cv.external_id = '<your_configuration_version_external_id>';
