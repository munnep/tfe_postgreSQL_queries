SELECT
  p.external_id ,
  r.external_id as run_id,
  r.created_at as created_at,
  w.name as workspace_name
FROM
  rails.plans p
JOIN
  rails.runs r ON p.run_id = r.id
JOIN
  rails.workspaces w ON r.workspace_id = w.id
WHERE
  p.external_id = 'plan-VHStgPcP83t1she2';
