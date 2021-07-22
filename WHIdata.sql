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


truncate table dbo.vw_dim_store
truncate table dbo.vw_dim_product

truncate table staging.whi_raw_transaction_atstate;