app = load '/user/hive/warehouse/h1b_final' using PigStorage() as
(s_no:int, case_status:chararray, employer_name:chararray,
soc_name:chararray, job_title:chararray,
full_time_position:chararray,prevailing_wage:int,year:chararray,
worksite:chararray, longitute:double, latitute:double);
app1 = GROUP app by year;
app2 = FOREACH app1 GENERATE group,COUNT($1);
dump app2;

