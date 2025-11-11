-- This query retrieves workspace module versions along with their associated workspace and organization names
select 
    wm.workspace_id, 
    w.name as workspace_name,
    o.name as organization_name,
    wm.source, 
    wm.version 
from rails.workspace_modules wm
join rails.workspaces w on wm.workspace_id = w.id
join rails.organizations o on w.organization_id = o.id;

