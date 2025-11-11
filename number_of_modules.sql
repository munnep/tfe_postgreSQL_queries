-- This query retrieves the number of versions available for each module in the registry
SELECT 
       m.name AS module_name,
       COUNT(v.*) AS version_count
FROM registry.modules AS m
LEFT JOIN registry.module_versions AS v
  ON v.module_provider_id = m.id
GROUP BY m.id, m.name
ORDER BY m.name;