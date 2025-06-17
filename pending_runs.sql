-- This SQL query retrieves the count of runs in various statuses grouped by organization and workspace. This would match the TFE pending status in the UI

SELECT 
  organizations.name AS organization_name,
  workspaces.name AS workspace_name,
  COUNT(runs.external_id) AS total_runs,
  runs.status
FROM rails.runs AS runs
  JOIN rails.workspaces AS workspaces 
    ON runs.workspace_id = workspaces.id
  JOIN rails.organizations AS organizations 
    ON workspaces.organization_id = organizations.id
WHERE 
  runs.status IN ('pending', 'planned', 'applying', 'planning', 'cost_estimated', 'policy_checked')
GROUP BY organizations.name, workspaces.name, runs.status
ORDER BY workspaces.name;
