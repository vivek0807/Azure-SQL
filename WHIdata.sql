select * from INFORMATION_SCHEMA.TABLES where TABLE_TYPE='BASE TABLE' AND TABLE_SCHEMA='STAGING'

create table dbo.tester(
    foldername varchar(MAX),
    filename varchar(max)
)


create procedure datacheck
    (@filename varchar(max),
     @foldername varchar(max)
    )
    as
    begin
        insert into tester values (@filename,@foldername)
    end




truncate table tester
select * from tester;


create procedure casecheck
    as begin
     insert into tester  values ('run','run')
end

select top(100)* from staging.vw_dim_customer;

truncate table staging.vw_dim_customer;

select top(100)* from staging.vw_dim_PRODUCT;
truncate table staging.vw_dim_PRODUCT;

select top(100)* from staging.vw_dim_store;
truncate table staging.vw_dim_store;

select top(100)* from dbo.vw_dim_store;
select top(100)* from dbo.vw_dim_product;

select count(*) from dbo.vw_dim_store;

select top(100)* from dbo.whi_raw_transaction_atstate;

select top(100)* from staging.vw_fact_orders ;
select top(100)* from dbo.vw_fact_orders where order_dt !='2021-07-09';


truncate table dbo.vw_dim_store
truncate table dbo.vw_dim_product

truncate table staging.whi_raw_transaction_atstate;

delete from staging.vw_fact_orders where order_dt='2021-07-09'

--------------------adding date--------------------
truncate table staging.whi_raw_transaction_atstate;
truncate table dbo.whi_raw_transaction_atstate;
select top(100)* from  dbo.whi_raw_transaction_atstate;

select count(*) from staging.whi_raw_transaction_atstate; --30204580
select count(*) from dbo.whi_raw_transaction_atstate; --30204580

alter table dbo.whi_raw_transaction_atstate
    add loadtime datetime default current_timestamp;
------------------------------------------------------
alter table dbo. whi_raw_transaction_atzip
add loadtime datetime default current_timestamp;

select  top(100)* from  dbo.whi_raw_transaction_atzip
select  top(100)* from  staging.whi_raw_transaction_atzip
select count(*) from dbo.whi_raw_transaction_atzip;
truncate table dbo.whi_raw_transaction_atzip;
truncate table staging.whi_raw_transaction_atzip;

-------------------------------------------------------
alter table dbo.whi_data
    add loadtime datetime default current_timestamp

delete from dbo.whi_data  where dbo.whi_data.rowid in
(select distinct sw.rowid from staging.whi_data sw)

select top(100)* from dbo.whi_data;

delete from dbo.vw_fact_orders where dbo.vw_fact_orders.order_dt in
(select distinct so.order_dt from staging.vw_fact_orders so)