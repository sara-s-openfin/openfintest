-- I lost all my former queries
/*
Things I want:
1. Differentiate Billable v. Non-Billable
2. Reallocate contracts w/ No LK to proper contract moniker
*/


 /* Past Useful Queries*/
-- identify biggest billable app usage by JP Morgan
SELECT app_name, app_uuid, machine_id
FROM licensing.license_usage_90_days
WHERE ( company_name LIKE '%JP%'
    OR company_name LIKE '%J.P%' )
  AND LOWER(app_name) NOT LIKE '%uat%'
  AND LOWER(app_name) NOT LIKE '%dev%'
  AND LOWER(app_name) NOT LIKE '%-preprod%'
  AND LOWER(app_name) NOT LIKE '%preprod%'
  AND LOWER(app_name) NOT LIKE '%test%'
  AND LOWER(app_name) NOT LIKE '%sit%'
  AND LOWER(app_name) NOT LIKE '%Localhost%'
  AND license_key = '6858dbf2-5b85-45fe-bf71-7740549a1b91' and billable = true;

