CREATE DATABASE datawarehouse;

use datawarehouse;
create schema bronze;

create schema silver;

create schema gold;

CREATE TABLE bronze.crm_cust_info (
    cst_id INT,
    cst_key NVARCHAR(50),
    cst_firstname NVARCHAR(50),
    cst_lastname NVARCHAR(50),
    cst_marital_status NVARCHAR(50),
    cst_gndr NVARCHAR(50),
    cst_create_date DATE
);

CREATE TABLE bronze.crm_prd_info (
    prd_id INT,
    prd_key NVARCHAR(50),
    prd_nm NVARCHAR(50),
    prd_cost INT,
    prd_line NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt DATETIME
);


CREATE TABLE bronze.crm_sales_details (
    sls_ord_num NVARCHAR(50),
    sls_prd_key NVARCHAR(50),
    sls_cust_id INT,
    sls_order_dt INT,
    sls_ship_dt INT,
    sls_due_dt INT,
    sls_sales INT,
    sls_quantity INT,
    sls_price INT
);

create table bronze.erp_loc_a101(
	cid nvarchar(50),
	cntry nvarchar(50)
);


IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL 
    DROP TABLE bronze.erp_cust_az12;
GO

CREATE TABLE bronze.erp_cust_az12 (
    cid NVARCHAR(50),
    bdate DATE,
    gen NVARCHAR(50)
);
GO


create table bronze.erp_px_cat_g1v2(
	id				nvarchar(50),
	cat				nvarchar(50),
	subcat			nvarchar(50),
	maintenance		nvarchar(50)
);
