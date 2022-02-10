DECLARE @Hash TABLE(CHECKSUM BIGINT)

set rowcount 5;

select * from Production.Product order by ProductID;



select table_schema,table_name,count(*)from INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA='Person'
group by TABLE_SCHEMA,TABLE_NAME

select * from Production.Product;
select * from Production.BillOfMaterials;
select top(1000)* from Person.Password;

USE Test;

select *  into Production.BillOfMaterials_stg from Production.BillOfMaterials;

select count(*) from Production.BillOfMaterials;
select count(*) from Production.BillOfMaterials_exp

select count(*) from Production.BillOfMaterials_stg

truncate table Production.BillOfMaterials_exp;

truncate table Production.BillOfMaterials_stg;

create table tester(
    getdata varchar(MAX)
)

create TABLE kaw_metadata(
                             tableschema varchar(30),
                             tablename varchar(30),
                             numbers numeric
)

create table kaw_delete(
                           tablename varchar(30),
                           numbers numeric,
                           deleted varchar(2) default 'N',
                           delete_dt_tm datetime
)
---PROCEDURES
create procedure datacheck
(@putdata varchar(max))
as
begin
    insert into tester values (@putdata)
end

    create procedure dbo.gettablecount
    as
    begin
        truncate table kaw_metadata;
        insert into kaw_metadata select table_schema,table_name,count(*)from INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA='Person'
        group by TABLE_SCHEMA,TABLE_NAME;
        insert into kaw_delete select tablename,numbers from kaw_metadata where numbers>1;

    end


        exec dbo.gettablecount;


/********** example 1 **********/
    select * from kaw_metadata

        drop procedure testForLoop
            as
    begin
        declare @au_id varchar;

        set rowcount 0
        select tablename into #mytemp from kaw_metadata

        set rowcount 1

        select @au_id = tablename from #mytemp

        while @@rowcount <> 0

            begin
                set rowcount 0
                select * from #mytemp where tablename = @au_id
                print @au_id
                delete #mytemp where tablename = @au_id

                set rowcount 1
                select @au_id = tablename from #mytemp
            end
        set rowcount 0
    end


        exec testForLoop


    select * from kaw_metadata
    select * from kaw_delete
    select * from Production.productcosthistory;
    select * from Production.productlistpricehistory

    delete  Production.productlistpricehistory from Production.productlistpricehistory
                                                        inner join Production.productcosthistory on
            Production.productcosthistory.productid=Production.productlistpricehistory.productid



    select * from Sales.shoppingcartitem;
    select * into Sales.sh_bkp from Sales.shoppingcartitem;

    select * from Production.productreview;
    select * from Sales.sh_bkp;

    select * from INFORMATION_SCHEMA.TABLES where TABLE_TYPE='BASE TABLE' and TABLE_NAME='productreview'

    delete Sales.shoppingcartitem from Sales.shoppingcartitem
                                           inner join Production.Productreview
                                                      on Sales.shoppingcartitem.productid=Production.productreview.productid;

    select top(100)* from Production.BillOfMaterials where BillOfMaterialsID=45489;


        set rowcount 0
    select * from Person.Password  ;

    select newid();


        create table Equities(
                                 id int identity (1,1),
                                 scrip varchar(max),
                                 entryprice decimal,
                                 exitprice decimal,
                                 Holding char default 'N',
                                 startdate date  default current_timestamp,
                                 enddate date default '2099/12/31',

        )

    update dbo.Equities set Holding='y' where scrip='zomato'
    select * from Equities;

    insert into dbo.Equities (scrip, entryprice, exitprice) values ('CDSL',1287,1355)
    insert into dbo.Equities (scrip, entryprice, exitprice) values ('Zomato',75,130)
    insert into dbo.Equities (scrip, entryprice, exitprice) values ('Tata Steel',1400,1200)
    insert into dbo.Equities (scrip, entryprice, exitprice) values ('Indalco',130,150)
    insert into dbo.Equities (scrip, entryprice, exitprice) values ('Persistent',3000,3017)
    update dbo.Equities  set Holding='Y',enddate='2021/08/01' where id=1




    select * from tester;

        truncate table tester

/********** example 1 **********/
    select tablename into #mytemp from kaw_metadata
    select * from #mytemp
        drop table #mytemp


    select table_name from INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA='dbo'



        create procedure testforLoop
        as
        begin
            declare @au_id char( 25 )
            declare @getname varchar(25)
            declare @dublicate_table varchar(25)
            set rowcount 0
            select table_name into #mytemp from INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA='dbo'
            set rowcount 1
            select @au_id = table_name from #mytemp

            while @@rowcount <> 0

                begin
                    set rowcount 0
                    select @getname=table_name from #mytemp where table_name = @au_id
                    print @getname
                    delete #mytemp where table_name = @au_id

                    set rowcount 1
                    select @au_id = table_name from #mytemp
                end
            drop table #mytemp
            set rowcount 0
        end

            exec testForLoop



            set rowcount 0
            drop table #mytemp
            create procedure testforLoop
            as
            begin
                declare @total int =0;
                declare @getname varchar(25)
                declare @dublicate_table varchar(25)
                declare @row_cnt int=0;
                select table_name into #mytemp from INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA='dbo'
                select @total=count(*) from #mytemp
                print @total
                while @row_cnt<@total
                    begin
                        set rowcount 1
                        select @getname=table_name from #mytemp
                        raiserror (@getname,10,0)
                        delete #mytemp where table_name=@getname
                        set @row_cnt+=1
                    end
                drop table #mytemp
                set rowcount 0
            end

                exec testforLoop



select * from dbo.kaw_metadata
drop table dbo.kaw_metadata;
SELECT COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE OBJECTPROPERTY(OBJECT_ID(CONSTRAINT_SCHEMA + '.' + QUOTENAME(CONSTRAINT_NAME)), 'IsPrimaryKey') = 1
 AND TABLE_SCHEMA = 'Production' --AND TABLE_NAME = 'TableName'

select A.TABLE_NAME,B.Column_name INTO DBO.KAW_METADATA from INFORMATION_SCHEMA.TABLES A,INFORMATION_SCHEMA.KEY_COLUMN_USAGE B
WHERE TABLE_TYPE = 'BASE TABLE' and A.TABLE_SCHEMA='Production' and B.TABLE_SCHEMA='Production' and OBJECTPROPERTY(OBJECT_ID(CONSTRAINT_SCHEMA + '.' + QUOTENAME(CONSTRAINT_NAME)), 'IsPrimaryKey') = 1
AND A.TABLE_NAME=B.TABLE_NAME

select * into dbo.temp_kaw_meta from dbo.KAW_METADATA
select count(*) from dbo.KAW_METADATA
select * from dbo.KAW_METADATA

select count(*) as counting from Production.BillOfMaterials group by BillOfMaterialsID having count(*)>1


create table dbo.duplicates(
    table_name varchar(20)
)
insert into dbo.duplicates values('TableName')
create procedure TestDuplicate
as
begin
    declare @getTableName varchar(40)
    declare @getColumnName varchar(40)
    declare @getCommonCount int =0
    declare @total int =0
    declare @row_count int=0
    declare @query nvarchar(1000)
    drop table dbo.temp_kaw_meta
    select * into dbo.temp_kaw_meta from dbo.KAW_METADATA
    select @total=count(*) from dbo.KAW_METADATA
    print @total
    set rowcount 1
    while @row_count<@total
    begin
        select @getTableName=table_name,@getColumnName=column_name from dbo.temp_kaw_meta
        set @query='select @getCommonCountOUT=count(*)from Production.'+@getTableName+' group by '+@getColumnName+' having count(*)>1'

       --select @getCommonCount=count(*) from Production.BillOfMaterials group by @getColumnName having count(*)>1
        EXECUTE sp_executesql  @query,N'@getCommonCountOUT int OUTPUT',@getCommonCountOUT=@getCommonCount OUTPUT
        print @query
        print @getCommonCount
        if (@getCommonCount)>1
            begin
            print 'Common'
                insert into dbo.duplicates values (+@getTableName)
            end
        else
            begin
            print 'No Common'
            end

        set @row_count+=1
        set @getCommonCount=0
        print @row_count
        delete dbo.temp_kaw_meta where TABLE_NAME=@getTableName
    end
set rowcount 0
end

exec dbo.TestDuplicate
select * from dbo.duplicates
truncate table dbo.duplicates

select count(*)from Production.ProductListPriceHistory group by ProductID having count(*)>1
select count(*)from Production.ProductDocument group by DocumentNode having count(*)>1

select count(*)from Production.ProductCostHistory group by ProductID having count(*)>1

