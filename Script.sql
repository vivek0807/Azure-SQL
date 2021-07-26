use [whi_db]
go
create table [staging].[vw_dim_customer](
	[customer_id] [numeric](10, 0) not null,
	[cq_customer_id] [varchar](500) null,
	[customer_nm] [varchar](500) null,
	[customer_type] [varchar](500) null,
	[cq_customer_nm] [varchar](500) null,
	[billing_sch_nbr] [numeric](38, 0) null,
	[price_type] [varchar](500) null,
	[city_nm] [varchar](500) null,
	[state_cd] [varchar](500) null,
	[zip_cd] [varchar](500) null,
	[store_num] [numeric](38, 0) null,
	[cust_variation_cd] [varchar](500) null,
	[active_ind] [varchar](500) null,
	[inactive_reason_cd] [varchar](500) null,
	[credit_status_cd] [varchar](500) null,
 constraint [pk_customer] primary key clustered
	(
		[customer_id] asc
	)
)
go

create table [dbo].[vw_dim_customer](
	[customer_id] [numeric](10, 0) not null,
	[cq_customer_id] [varchar](500) null,
	[customer_nm] [varchar](500) null,
	[customer_type] [varchar](500) null,
	[cq_customer_nm] [varchar](500) null,
	[billing_sch_nbr] [numeric](38, 0) null,
	[price_type] [varchar](500) null,
	[city_nm] [varchar](500) null,
	[state_cd] [varchar](500) null,
	[zip_cd] [varchar](500) null,
	[store_num] [numeric](38, 0) null,
	[cust_variation_cd] [varchar](500) null,
	[active_ind] [varchar](500) null,
	[inactive_reason_cd] [varchar](500) null,
	[credit_status_cd] [varchar](500) null,
 constraint [pk_customer] primary key clustered
	(
		[customer_id] asc
	)
)
go
create table [staging].[vw_dim_product](
	[sku] [varchar](max) null,
	[cq_part_id] [varchar](max) null,
	[line_code] [varchar](max) null,
	[item_nbr] [varchar](max) null,
	[sku_nm] [varchar](max) null,
	[descriptions] [varchar](max) null,
	[division_num] [numeric](38, 0) null,
	[division_description] [varchar](max) null,
	[group_num] [numeric](38, 0) null,
	[group_description] [varchar](max) null,
	[department_num] [numeric](38, 0) null,
	[department_description] [varchar](max) null,
	[class_num] [numeric](38, 0) null,
	[class_description] [varchar](max) null,
	[subclass_num] [numeric](38, 0) null,
	[subclass_description] [varchar](max) null,
	[unitcost] [numeric](9, 2) null,
	[retaill_price] [numeric](11, 2) null,
	[profsnl_price] [numeric](19, 2) null,
	[product_vendor_id] [varchar](max) null,
	[product_vendor_nm] [varchar](max) null,
	[back_room_ind] [varchar](max) null,
	[discontinued_flag] [varchar](max) null,
	[brand_cd] [varchar](max) null,
	[brand_description] [varchar](max) null,
	[item_type] [varchar](max) null,
	[part_number] [varchar](max) null,
	[line_code_desc_eng] [varchar](max) null,
	[subline_code] [numeric](38, 0) null,
	[subline_desc_eng] [varchar](max) null,
	[item_desc_eng] [varchar](max) null,
	[price_1] [numeric](19, 3) null,
	[price_2] [numeric](19, 3) null,
	[price_3] [numeric](19, 3) null,
	[price_4] [numeric](19, 3) null,
	[price_5] [numeric](19, 3) null,
	[price_7] [numeric](19, 3) null
)
go
create table [dbo].[vw_dim_product](
	[sku] [varchar](max) null,
	[cq_part_id] [varchar](max) null,
	[line_code] [varchar](max) null,
	[item_nbr] [varchar](max) null,
	[sku_nm] [varchar](max) null,
	[descriptions] [varchar](max) null,
	[division_num] [numeric](38, 0) null,
	[division_description] [varchar](max) null,
	[group_num] [numeric](38, 0) null,
	[group_description] [varchar](max) null,
	[department_num] [numeric](38, 0) null,
	[department_description] [varchar](max) null,
	[class_num] [numeric](38, 0) null,
	[class_description] [varchar](max) null,
	[subclass_num] [numeric](38, 0) null,
	[subclass_description] [varchar](max) null,
	[unitcost] [numeric](9, 2) null,
	[retaill_price] [numeric](11, 2) null,
	[profsnl_price] [numeric](19, 2) null,
	[product_vendor_id] [varchar](max) null,
	[product_vendor_nm] [varchar](max) null,
	[back_room_ind] [varchar](max) null,
	[discontinued_flag] [varchar](max) null,
	[brand_cd] [varchar](max) null,
	[brand_description] [varchar](max) null,
	[item_type] [varchar](max) null,
	[part_number] [varchar](max) null,
	[line_code_desc_eng] [varchar](max) null,
	[subline_code] [numeric](38, 0) null,
	[subline_desc_eng] [varchar](max) null,
	[item_desc_eng] [varchar](max) null,
	[price_1] [numeric](19, 3) null,
	[price_2] [numeric](19, 3) null,
	[price_3] [numeric](19, 3) null,
	[price_4] [numeric](19, 3) null,
	[price_5] [numeric](19, 3) null,
	[price_7] [numeric](19, 3) null
)
go
create table [staging].[vw_dim_store](
	[aap_store_num] [numeric](38, 0) not null,
	[aap_store_nm] [varchar](500) null,
	[cq_store_num] [varchar](500) null,
	[group_id] [varchar](500) null,
	[effective_dt] [date] null,
	[mgr_sls_person_id] [varchar](500) null,
	[country_cd] [varchar](500) null,
	[district_cd] [varchar](500) null,
	[district_desc] [varchar](500) null,
	[region_desc] [varchar](500) null,
	[region_cd] [varchar](500) null,
	[area_cd] [varchar](500) null,
	[area_desc] [varchar](500) null,
	[division_nm] [varchar](500) null,
	[city_nm] [varchar](500) null,
	[state_cd] [varchar](500) null,
	[store_zip_cd] [varchar](500) null,
	[company_num] [varchar](500) null,
	[open_dt] [date] null,
	[close_dt] [date] null,
	[dma_nm] [varchar](500) null,
	[zip] [varchar](500) null,
	[zip3] [varchar](500) null,
	[dma_state] [varchar](500) null,
	[dma_city] [varchar](500) null,
	[cam] [varchar](500) null,
	[cam_number] [varchar](500) null,
	[csm] [varchar](500) null,
	[csm_number] [varchar](500) null,
	[vp] [varchar](500) null,
	[vp_number] [varchar](500) null,
	[svp] [varchar](500) null,
	[svp_number] [varchar](500) null,
	[vpops_number] [varchar](500) null,
	[vpopsdesc] [varchar](500) null,
 constraint [pk_store] primary key clustered
	(
		[aap_store_num] asc
	)
)
go
create table [dbo].[vw_dim_store](
	[aap_store_num] [numeric](38, 0) not null,
	[aap_store_nm] [varchar](500) null,
	[cq_store_num] [varchar](500) null,
	[group_id] [varchar](500) null,
	[effective_dt] [date] null,
	[mgr_sls_person_id] [varchar](500) null,
	[country_cd] [varchar](500) null,
	[district_cd] [varchar](500) null,
	[district_desc] [varchar](500) null,
	[region_desc] [varchar](500) null,
	[region_cd] [varchar](500) null,
	[area_cd] [varchar](500) null,
	[area_desc] [varchar](500) null,
	[division_nm] [varchar](500) null,
	[city_nm] [varchar](500) null,
	[state_cd] [varchar](500) null,
	[store_zip_cd] [varchar](500) null,
	[company_num] [varchar](500) null,
	[open_dt] [date] null,
	[close_dt] [date] null,
	[dma_nm] [varchar](500) null,
	[zip] [varchar](500) null,
	[zip3] [varchar](500) null,
	[dma_state] [varchar](500) null,
	[dma_city] [varchar](500) null,
	[cam] [varchar](500) null,
	[cam_number] [varchar](500) null,
	[csm] [varchar](500) null,
	[csm_number] [varchar](500) null,
	[vp] [varchar](500) null,
	[vp_number] [varchar](500) null,
	[svp] [varchar](500) null,
	[svp_number] [varchar](500) null,
	[vpops_number] [varchar](500) null,
	[vpopsdesc] [varchar](500) null,
 constraint [pk_store] primary key clustered
	(
		[aap_store_num] asc
	)
)
go
create table [staging].[vw_fact_orders](
	[company] [varchar](500) null,
	[order_id] [varchar](500) null,
	[order_line_num] [varchar](500) null,
	[order_dt] [date] null,
	[aap_customer_id] [numeric](10, 0) null,
	[cq_customer_id] [varchar](500) null,
	[sku_cd] [varchar](500) null,
	[cq_sku_cd] [varchar](500) null,
	[customer_type] [varchar](500) null,
	[price_type] [varchar](500) null,
	[cq_esale] [varchar](500) null,
	[store_num] [numeric](38, 0) null,
	[assigned_billing_schedule] [numeric](38, 0) null,
	[price_cd] [varchar](500) null,
	[price_type_desc] [varchar](500) null,
	[metal_tier_value] [varchar](1000) null,
	[b2b_sls_channel_nm] [varchar](500) null,
	[channel_nm] [varchar](500) null,
	[line_code] [varchar](500) null,
	[sub_line_cd] [varchar](500) null,
	[unit_cost] [numeric](20, 3) null,
	[pos_unit_price] [numeric](20, 3) null,
	[quantity] [numeric](38, 2) null,
	[cost] [numeric](38, 4) null,
	[cogs_amt] [numeric](38, 4) null,
	[txn_unit_price] [numeric](20, 3) null,
	[revenue] [numeric](38, 4) null,
	[recommended_revenue_amt] [numeric](38, 4) null,
	[pmor_flag] [varchar](1) null,
	[pmor_revenue_amt] [numeric](38, 4) null,
	[pmor_revenue_at_target_amt] [numeric](38, 4) null,
	[pmor_opportunity_amt] [numeric](38, 4) null,
	[pmor_bin_cd] [varchar](16) null,
	[profit_amt] [numeric](38, 4) null,
	[recommended_profit_amt] [numeric](38, 4) null,
	[go_light_id] [varchar](500) null,
	[go_light_value] [varchar](500) null,
	[metal_tiered_flag] [varchar](100) null,
	[source_buy_out_flag] [varchar](500) null,
	[esales_flag] [varchar](500) null,
	[online_flag] [varchar](500) null
)
go
create table [dbo].[vw_fact_orders](
	[company] [varchar](500) null,
	[order_id] [varchar](500) null,
	[order_line_num] [varchar](500) null,
	[order_dt] [date] null,
	[aap_customer_id] [numeric](10, 0) null,
	[cq_customer_id] [varchar](500) null,
	[sku_cd] [varchar](500) null,
	[cq_sku_cd] [varchar](500) null,
	[customer_type] [varchar](500) null,
	[price_type] [varchar](500) null,
	[cq_esale] [varchar](500) null,
	[store_num] [numeric](38, 0) null,
	[assigned_billing_schedule] [numeric](38, 0) null,
	[price_cd] [varchar](500) null,
	[price_type_desc] [varchar](500) null,
	[metal_tier_value] [varchar](1000) null,
	[b2b_sls_channel_nm] [varchar](500) null,
	[channel_nm] [varchar](500) null,
	[line_code] [varchar](500) null,
	[sub_line_cd] [varchar](500) null,
	[unit_cost] [numeric](20, 3) null,
	[pos_unit_price] [numeric](20, 3) null,
	[quantity] [numeric](38, 2) null,
	[cost] [numeric](38, 4) null,
	[cogs_amt] [numeric](38, 4) null,
	[txn_unit_price] [numeric](20, 3) null,
	[revenue] [numeric](38, 4) null,
	[recommended_revenue_amt] [numeric](38, 4) null,
	[pmor_flag] [varchar](1) null,
	[pmor_revenue_amt] [numeric](38, 4) null,
	[pmor_revenue_at_target_amt] [numeric](38, 4) null,
	[pmor_opportunity_amt] [numeric](38, 4) null,
	[pmor_bin_cd] [varchar](16) null,
	[profit_amt] [numeric](38, 4) null,
	[recommended_profit_amt] [numeric](38, 4) null,
	[go_light_id] [varchar](500) null,
	[go_light_value] [varchar](500) null,
	[metal_tiered_flag] [varchar](100) null,
	[source_buy_out_flag] [varchar](500) null,
	[esales_flag] [varchar](500) null,
	[online_flag] [varchar](500) null
)
go
go
create table [staging].[whi_raw_transaction_atzip](
	[region] [varchar](500) null,
	[brand_aaia_code] [varchar](500) null,
	[aaia_brand_name] [varchar](500) null,
	[brand_name] [varchar](500) null,
	[whi_catalog_line_code] [varchar](500) null,
	[part_type_desc] [varchar](500) null,
	[part_term] [int] null,
	[item_number] [varchar](500) null,
	[time_period] [date] null,
	[sys_period] [int] null,
	[sys_week] [int] null,
	[sys_fiscal_year] [int] null,
	[sys_fiscal_week] [int] null,
	[nexpart_sales_qty_requested] [int] null,
	[sell_price] [numeric](38, 2) null,
	[total_sales] [numeric](38, 2) null,
	[method] [varchar](500) null,
	[seller_type] [int] null,
	[distdesc] [varchar](500) null
)
go
create table [dbo].[whi_raw_transaction_atzip](
	[region] [varchar](500) null,
	[brand_aaia_code] [varchar](500) null,
	[aaia_brand_name] [varchar](500) null,
	[brand_name] [varchar](500) null,
	[whi_catalog_line_code] [varchar](500) null,
	[part_type_desc] [varchar](500) null,
	[part_term] [int] null,
	[item_number] [varchar](500) null,
	[time_period] [date] null,
	[sys_period] [int] null,
	[sys_week] [int] null,
	[sys_fiscal_year] [int] null,
	[sys_fiscal_week] [int] null,
	[nexpart_sales_qty_requested] [int] null,
	[sell_price] [numeric](38, 2) null,
	[total_sales] [numeric](38, 2) null,
	[method] [varchar](500) null,
	[seller_type] [int] null,
	[distdesc] [varchar](500) null
)
go
create table [staging].[whi_raw_transaction_atstate](
	[region] [varchar](500) null,
	[brand_aaia_code] [varchar](500) null,
	[aaia_brand_name] [varchar](500) null,
	[brand_name] [varchar](500) null,
	[whi_catalog_line_code] [varchar](500) null,
	[part_type_desc] [varchar](500) null,
	[part_term] [int] null,
	[item_number] [varchar](500) null,
	[time_period] [date] null,
	[sys_period] [int] null,
	[sys_week] [int] null,
	[sys_fiscal_year] [int] null,
	[sys_fiscal_week] [int] null,
	[nexpart_sales_qty_requested] [int] null,
	[sell_price] [numeric](38, 2) null,
	[total_sales] [numeric](38, 2) null,
	[method] [varchar](500) null,
	[seller_type] [int] null,
	[distdesc] [varchar](500) null
)
go
create table [dbo].[whi_raw_transaction_atstate](
	[region] [varchar](500) null,
	[brand_aaia_code] [varchar](500) null,
	[aaia_brand_name] [varchar](500) null,
	[brand_name] [varchar](500) null,
	[whi_catalog_line_code] [varchar](500) null,
	[part_type_desc] [varchar](500) null,
	[part_term] [int] null,
	[item_number] [varchar](500) null,
	[time_period] [date] null,
	[sys_period] [int] null,
	[sys_week] [int] null,
	[sys_fiscal_year] [int] null,
	[sys_fiscal_week] [int] null,
	[nexpart_sales_qty_requested] [int] null,
	[sell_price] [numeric](38, 2) null,
	[total_sales] [numeric](38, 2) null,
	[method] [varchar](500) null,
	[seller_type] [int] null,
	[distdesc] [varchar](500) null
)
go
create table [staging].[whi_data](
	[whicataloglinecode] [nvarchar](500) null,
	[parttypedescription] [nvarchar](500) null,
	[partterm] [nvarchar](500) null,
	[standardpartnumber] [nvarchar](500) null,
	[whisku] [nvarchar](500) not null,
	[aapsku] [nvarchar](500) null,
	[aappla] [nvarchar](500) null,
	[aappartnumber] [nvarchar](500) null,
	[cqlinecode] [nvarchar](500) null,
	[cqpartnumber] [nvarchar](500) null,
	[cqpartnumbershort] [nvarchar](500) null,
	[cqdescription] [nvarchar](500) null,
	[imported_by] [nvarchar](500) null,
	[date_imported] [datetime] not null,
	[rowid]  as (concat([whisku],[cqlinecode],[cqpartnumbershort],[date_imported])),
	primary key clustered
	(
		[rowid] asc
	)
)
go
create table [dbo].[whi_data](
	[whicataloglinecode] [nvarchar](500) null,
	[parttypedescription] [nvarchar](500) null,
	[partterm] [nvarchar](500) null,
	[standardpartnumber] [nvarchar](500) null,
	[whisku] [nvarchar](500) not null,
	[aapsku] [nvarchar](500) null,
	[aappla] [nvarchar](500) null,
	[aappartnumber] [nvarchar](500) null,
	[cqlinecode] [nvarchar](500) null,
	[cqpartnumber] [nvarchar](500) null,
	[cqpartnumbershort] [nvarchar](500) null,
	[cqdescription] [nvarchar](500) null,
	[imported_by] [nvarchar](500) null,
	[date_imported] [datetime] not null,
	[rowid]  as (concat([whisku],[cqlinecode],[cqpartnumbershort],[date_imported])),
	primary key clustered
	(
		[rowid] asc
	)
)
go
