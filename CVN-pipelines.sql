drop table staging.person





select count(*) from staging.person where person_update_dt_tm in
(select max(person_update_dt_tm) from staging.person group by person_id)


select * from sys.columns where name like '%domain%'
select top(100)* from staging.aspire_person_alias
select * from staging.aspire_address_person where person_id=1703446
select top(100)* from staging.person
truncate table staging.aspire_address_person
--1703446
--2020-12-11 03:17:00.000
-- do pivot like [person_id], [SSN], [MRN] then map (I already did the pivot in client_table_mapping data flow)
SELECT [person_id]
    ,[per_alias_data_status]
    ,[per_alias]
FROM [staging].[person_alias]
where per_alias_data_status in ('SSN', 'MRN')

-- do pivot like [person_id], [email], [Mobile] then map
SELECT [person_id]
    ,[per_phn_contact_method]
    ,[per_phn_type]
,[per_phn_phone_number]
FROM [staging].[person_phone]

select * from staging.person_phone where person_id=2173320
-- use this directly to map
SELECT [person_id]
    ,[per_addr_type]
    ,[per_addr_street_1]
    ,[per_addr_street_2]
    ,[per_addr_street_3]
    ,[per_addr_street_4]
    ,[per_addr_city]
    ,[per_addr_state]
    ,[per_addr_country]
    ,[per_addr_zip]
FROM [staging].[person_address]
where per_addr_type = 'Home'

select [person id] from staging.person;