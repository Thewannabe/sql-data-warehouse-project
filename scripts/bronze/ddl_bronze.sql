USE DataWarehouse;
GO

if object_id('bronze.crm_cust_info', 'U') is not null
    drop table bronze.crm_cust_info;
create table bronze.crm_cust_info (
    cst_id int,
    cst_key NVARCHAR(50),
    cst_firstname NVARCHAR(100),
    cst_lastname NVARCHAR(100),
    cst_material_status NVARCHAR(50),
    cst_gndr NVARCHAR(50),
    cst_create_date date
)
GO
if object_id('bronze.crm_prd_ind', 'U') is not null
    drop table bronze.crm_prd_ind;
create table bronze.crm_prd_ind (
    prd_id int,
    prd_key NVARCHAR(50),
    prd_nm NVARCHAR(100),
    prd_cost NVARCHAR(100),
    prd_line NVARCHAR(50),
    prd_start_dt date,
    prd_end_dt date
)
GO

if object_id('bronze.crm_sales_details', 'U') is not null
    drop table bronze.crm_sales_details;
create table bronze.crm_sales_details (
    sls_ord_num NVARCHAR(50),	
    sls_prd_key NVARCHAR(50),
    sls_cust_id int,
	sls_order_dt date,
    sls_ship_dt date,
    sls_due_dt date,
    sls_sales int,
    sls_quantity int,	
    sls_price int
)
GO

if object_id('bronze.erp_cust_az12', 'U') is not null
    drop table bronze.erp_cust_az12;
create table bronze.erp_cust_az12 (
    cid NVARCHAR(50),
    bdate date,
    gen NVARCHAR(10)
)
GO

if object_id('bronze.erp_loc_a101', 'U') is not null
    drop table bronze.erp_loc_a101;
create table bronze.erp_loc_a101 (
    cid NVARCHAR(50),
    cntry NVARCHAR(50)
)
GO

if object_id('bronze.erp_px_cat_g1v2', 'U') is not null
    drop table bronze.erp_px_cat_g1v2;
create table bronze.erp_px_cat_g1v2 (
    id NVARCHAR(50),
    cat NVARCHAR(100),
    subcat NVARCHAR(100),
    maintenance NVARCHAR(50)
)
