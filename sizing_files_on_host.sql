-- uploaded by hour
SELECT
  DATE_TRUNC('hour', h.uploaded_at) AS upload_hour,
  SUM(h.disk_space)/1024 AS total_size_kb
FROM
  rails.hosted_files h
GROUP BY
  upload_hour
ORDER BY
  upload_hour;

-- uploaded by day
SELECT
  DATE(h.uploaded_at) AS upload_day,
  SUM(h.disk_space)/1024 AS total_size_kb
FROM
  rails.hosted_files h
GROUP BY
  upload_day
ORDER BY
  upload_day;

-- This query retrieves the hosted files uploaded today, showing their type, size in KB, upload
SELECT
  h.hostable_type,
  h.disk_space/1024 AS "size KB",
  h.uploaded_at,
  h.hostable_storage_key
FROM
  rails.hosted_files h
WHERE
  DATE(h.uploaded_at) = CURRENT_DATE;