-- see the number of runs created by day
SELECT 
    DATE(created_at) AS run_date,
    COUNT(*) AS total_runs
FROM 
    rails.runs
WHERE 
    DATE(created_at) >= '2025-04-01'
GROUP BY 
    DATE(created_at)
order by  run_date asc;



-- See it by hour
SELECT 
    DATE(created_at) AS run_date,
    EXTRACT(HOUR FROM created_at) AS run_hour,
    COUNT(*) AS total_runs
FROM 
    rails.runs
WHERE 
    DATE(created_at) >= '2025-04-29'    -- YYYY-MM-DD
GROUP BY 
    DATE(created_at),
    EXTRACT(HOUR FROM created_at)
ORDER BY 
    run_date ASC,
    run_hour ASC;
   