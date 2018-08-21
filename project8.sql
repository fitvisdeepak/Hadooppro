use default;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='Y' and year=2011 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='N' and year=2011 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='Y' and year=2012 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='N' and year=2012 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='Y' and year=2013 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='N' and year=2013 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='Y' and year=2014 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='N' and year=2014 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='Y' and year=2015 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='N' and year=2015 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='Y' and year=2016 group by job_title,year,full_time_position order by tot desc;
select job_title,year,full_time_position,avg(prevailing_wage) as tot from h1b_final where full_time_position ='N' and year=2016 group by job_title,year,full_time_position order by tot desc;

