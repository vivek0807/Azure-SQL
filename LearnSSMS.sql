DECLARE @Hash TABLE(CHECKSUM BIGINT)

set rowcount 5;

select * from Production.Product order by ProductID;

create table foldernames(
    names varchar(max)
);

select count(*) from INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA='Person'