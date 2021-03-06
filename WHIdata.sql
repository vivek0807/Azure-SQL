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



delete from dbo.vw_fact_orders po
where po.order_dt in
(select distinct so.order_dt from staging.vw_fact_orders so) -- new query
=======
>>>>>>> 7d9b692b7e342a28e9b716aef4f008731db0b218

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
------------------------------------------------------------------
select top (100)* from staging.vw_fact_orders;
select top(100)* from dbo.vw_fact_orders;
truncate table dbo.vw_fact_orders;
truncate table staging.vw_fact_orders;
select count(*) from staging.vw_fact_orders with (nolock );--1108512175
select count(*) from dbo.vw_fact_orders with (nolock );    --887748343
delete from dbo.vw_fact_orders where dbo.vw_fact_orders.order_dt in
(select distinct so.order_dt from staging.vw_fact_orders so)


----------------------------------------------------
select * from staging.whi_data where rowid='8LX|9046705170NULLNULLJun 15 2021  8:42PM'
                                        --  8LX|9046705170NULLNULLJun 15 2021  8:42PM
select top(10)* from staging.whi_data where rowid in(select distinct rowid from staging.whi_data);

select * from staging.whi_data where standardpartnumber='9046705170'

select top(10)* from dbo.whi_data;

truncate table staging.whi_data
truncate table staging.whi_raw_transaction_atzip

alter table dbo.vw_dim_customer drop constraint pk_customer;

alter table dbo.vw_dim_customer add constraint uk_customer unique (customer_id,cq_customer_id)

select count(*) from staging.vw_dim_customer sw
    where sw.customer_id in (select distinct dw.customer_id from staging.vw_dim_customer dw)--2262164

select distinct (customer_id)from staging.vw_dim_customer where customer_id='1846027674';

select count(distinct customer_id) from staging.vw_dim_customer; --2262129



truncate table dbo.vw_dim_customer;

select top (100)* from dbo.vw_dim_customer;

select * from staging.vw_dim_customer where customer_id ='1846027674'

create table checker1(
    today datetime
)



drop table checker1;

select customer_id,count(*) from staging.vw_dim_customer_adf where customer_id=6369036674 group by (customer_id);
select * from staging.vw_dim_customer_adf where customer_id is null;
truncate table dbo.vw_dim_customer;
select * from staging.vw_dim_customer_adf where cq_customer_id='COL.2428232'

    select count(distinct cq_customer_id) from staging.vw_dim_customer_adf