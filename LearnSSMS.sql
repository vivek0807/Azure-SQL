DECLARE @Hash TABLE(CHECKSUM BIGINT)

set rowcount 5;

select * from Production.Product order by ProductID;



select count(*) from INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE = 'BASE TABLE' and TABLE_SCHEMA='Person'

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

create procedure datacheck
    (@putdata varchar(max))
    as
    begin
        insert into tester values (@putdata)
    end


select * from tester;

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



