use default;
select soc_name,count(job_title) total from h1b_final where lower(job_title) = 'data scientist' group by soc_name order by total desc limit 10; 
