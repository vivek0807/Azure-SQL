drop table staging.person





select * from staging.person where person_update_dt_tm in
(select max(person_update_dt_tm) from staging.person group by person_id)


select * from sys.columns where name like '%domain%'