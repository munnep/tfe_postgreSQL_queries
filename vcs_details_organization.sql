-- This query retrieves detailed information about version control system (VCS) hosts
SELECT
  org.name AS organization_name,
  vcs.service_provider,
  vcs.http_url,
  client.name AS client_name,
  client.key AS client_key,
  client.external_id AS client_external_id,
  tokens.external_id AS token_id,
  tokens.created_at AS token_created_at,
  tokens.updated_at AS token_updated_at
FROM
  rails.vcs_hosts AS vcs
JOIN
  rails.o_auth_clients AS client
    ON vcs.oauth_client_id = client.id
JOIN
  rails.o_auth_tokens AS tokens
    ON client.id = tokens.oauth_client_id
LEFT JOIN
  rails.organizations AS org
    ON client.oauth_clientable_type = 'Organization' 
    AND client.oauth_clientable_id = org.id 
ORDER by
  vcs.id;