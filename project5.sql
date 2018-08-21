use default;
select job_title,year,count(case_status) as tot from h1b_final where year=2011 group by job_title,year order by tot desc limit 10; 
select job_title,year,count(case_status) as tot from h1b_final where year=2012 group by job_title,year order by tot desc limit 10; 
select job_title,year,count(case_status) as tot from h1b_final where year=2013 group by job_title,year order by tot desc limit 10; 
select job_title,year,count(case_status) as tot from h1b_final where year=2014 group by job_title,year order by tot desc limit 10; 
select job_title,year,count(case_status) as tot from h1b_final where year=2015 group by job_title,year order by tot desc limit 10; 
select job_title,year,count(case_status) as tot from h1b_final where year=2016 group by job_title,year order by tot desc limit 10; 
