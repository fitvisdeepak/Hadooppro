a = LOAD '/user/hive/warehouse/h1b_final' using PigStorage() as (s_no:int, case_status:chararray, employer_name:chararray, soc_name:chararray, job_title:chararray, full_time_position:chararray, prevailing_wage:int, year:chararray, worksite:chararray, longitute:double, latitute:double);
fil = filter a by year == '2011';
tot = group fil by $4;
rr = foreach tot generate group,COUNT($1);
fil1 = filter a by year == '2012';
tot1 = group fil1 by $4;
rr1 = foreach tot1 generate group,COUNT($1);
fil2 = filter a by year == '2013';
tot2 = group fil2 by $4;
rr2 = foreach tot2 generate group,COUNT($1);
fil3 = filter a by year == '2014';
tot3 = group fil3 by $4;
rr3 = foreach tot3 generate group,COUNT($1);
fil4 = filter a by year == '2015';
tot4 = group fil4 by $4;
rr4 = foreach tot4 generate group,COUNT($1);
fil5 = filter a by year == '2016';
tot5 = group fil5 by $4;
rr5 = foreach tot5 generate group,COUNT($1);
t1 = join rr by $0,rr1 by $0,rr2 by $0,rr3 by $0,rr4 by $0,rr5 by $0;
t2 = foreach t1 generate $0,$1,$3,$5,$7,$9,$11;
t3 = foreach t2 generate $0,(float)($6-$5)*100/$5,(float)($5-$4)*100/$4,(float)($4-$3)*100/$3,(float)($3-$2)*100/$2,(float)($2-$1)*100/$1;
t4 = foreach t3 generate $0,($1+$2+$3+$4+$5)/5;
t5 = order t4 by $1 desc;
t6 = limit t5 5;
dump t6;
