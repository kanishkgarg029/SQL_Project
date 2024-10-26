/*
Question: What are the top-paying Data Analyst jobs ?
- Identify the Top 10 highest-Paying Data Analyst roles that are available remotely.
- Focus on job postings with specified salaries (remove nulls)
- Why? Highlight the Top-Paying opportunities for Data Analysts.
*/

SELECT
    job_id,
    company_dim.name AS company_name,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date
FROM
    job_postings_fact
LEFT JOIN
    company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere' AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10