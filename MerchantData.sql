create schema staging;

select top(10)* from dbo.all_us_regions;

select * into staging.MV_Output_Advance_PrizmTrans from dbo.MV_Output_Advance_July_2020_Dec_2020_PrizmTrans
select * into staging.MV_Output_Advance_StateTrans from dbo.MV_Output_Advance_July_2020_Dec_2020_StateTrans
select top(100)* from dbo.MV_Output_Advance_July_20 20_Dec_2020_StateTrans

select top(100)* from staging.MV_Output_Advance_PrizmTrans order by CohortStartPeriod,CohortName;

select top(100)* from dbo.MV_Output_Advance_July_2020_Dec_2020_PrizmTrans where CohortStartPeriod='2019-7-1' order by CohortStartPeriod;

select top(100)* from staging.MV_Output_Advance_StateTrans;
truncate table staging.MV_Output_Advance_PrizmTrans;
truncate table staging.MV_Output_Advance_StateTrans
--------------------------------------------------------------------------


select count(*) from dbo.MV_Output_Advance_July_2020_Dec_2020_PrizmTrans;--85021
select count(*) from staging.MV_Output_Advance_PrizmTrans;--34686
select top(100)* from dbo.MV_Output_Advance_July_2020_Dec_2020_PrizmTrans;

delete st from dbo.MV_Output_Advance_July_2020_Dec_2020_PrizmTrans st where
st.CohortName+st.CohortStartPeriod+st.CohortEndPeriod+st.SpendMonth in
(select pt.CohortName+pt.CohortStartPeriod+pt.CohortEndPeriod+pt.SpendMonth from staging.MV_Output_Advance_PrizmTrans pt)
---------------------------------------------------------------------------

select top(100)* from dbo.MV_Output_Advance_July_2020_Dec_2020_StateTrans pt
inner join staging.MV_Output_Advance_StateTrans st
on st.CohortName=pt.CohortName and st.CohortStartPeriod=pt.CohortStartPeriod
and st.CohortEndPeriod=pt.CohortEndPeriod and st.SpendMonth=pt.SpendMonth; --0

select count(*) from staging.MV_Output_Advance_StateTrans;--37293
select count(*) from dbo.MV_Output_Advance_July_2020_Dec_2020_StateTrans;--36521+37293=73814

select count(*) from dbo.MV_Output_Advance_July_2020_Dec_2020_StateTrans --73814

delete st from dbo.MV_Output_Advance_July_2020_Dec_2020_StateTrans st where
st.CohortName+st.CohortStartPeriod+st.CohortEndPeriod+st.SpendMonth in
(select pt.CohortName+pt.CohortStartPeriod+pt.CohortEndPeriod+pt.SpendMonth from staging.MV_Output_Advance_StateTrans pt)

