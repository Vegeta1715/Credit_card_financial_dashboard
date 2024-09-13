--creating credit card information table
create table credit_card_info(
Client_Num numeric,
Card_Category Varchar(12),
Annual_Fee INT,
Activation_30_Days bool,
Customer_Acq_Cost Int,
Week_Start_Date Date,
Week_Num varchar(10),
Qtr varchar(5),
current_year int,
Credit_Limit numeric,
Total_Revolving_Bal numeric,
Total_Trans_Amt numeric,
Total_Trans_Vol int,
Avg_Utilization_Ratio decimal(5,3),
Use_Chip varchar(8),
Exp_Type varchar(20),
Interest_Earned decimal(10,3),
Delinquent_Acc bool
)
--checking if all columns are there
select * from credit_card_info;
--Coppying rows of csv data to sql database credit card info table
copy credit_card_info
(Client_Num,
Card_Category,
Annual_Fee,
Activation_30_Days,
Customer_Acq_Cost,
Week_Start_Date,
Week_Num,
Qtr,
current_year,
Credit_Limit,
Total_Revolving_Bal,
Total_Trans_Amt,
Total_Trans_Vol,
Avg_Utilization_Ratio,
Use_Chip,
Exp_Type,
Interest_Earned,
Delinquent_Acc)
from 'C:\Users\avikd\Desktop\dashboard\credit_card (1).csv'
delimiter ','
csv header;
--checking if rows are added
select * from credit_card_info

--Creating customer info table
create table customer_info(
Client_Num numeric,
Customer_Age int,Gender varchar(1),
Dependent_Count int,
Education_Level varchar(20),
Marital_Status	varchar(10),
state_cd varchar(5),
Zipcode numeric,
Car_Owner varchar(10),
House_Owner	varchar(10),
Personal_loan varchar(10),
contact varchar(15),
Customer_Job varchar(16),
Income numeric,
Cust_Satisfaction_Score int
 )
--Coppying datas from csv to sql customer info table
copy customer_info(Client_Num,
Customer_Age,Gender,
Dependent_Count,
Education_Level,
Marital_Status,
state_cd,
Zipcode,
Car_Owner,
House_Owner,
Personal_loan,
contact,
Customer_Job,
Income,
Cust_Satisfaction_Score)
from 'C:\Users\avikd\Desktop\dashboard\customer (1).csv'
delimiter ','
csv header;
--cheking rows of customer info
select * from customer_info;


--adding new data to credit card table
copy credit_card_info
(Client_Num,
Card_Category,
Annual_Fee,
Activation_30_Days,
Customer_Acq_Cost,
Week_Start_Date,
Week_Num,
Qtr,
current_year,
Credit_Limit,
Total_Revolving_Bal,
Total_Trans_Amt,
Total_Trans_Vol,
Avg_Utilization_Ratio,
Use_Chip,
Exp_Type,
Interest_Earned,
Delinquent_Acc)
from 'C:\Users\avikd\Desktop\dashboard\cc_add (1).csv'
delimiter ','
csv header;

select * from credit_card_info

--adding new data to customer info table
copy customer_info(Client_Num,
Customer_Age,Gender,
Dependent_Count,
Education_Level,
Marital_Status,
state_cd,
Zipcode,
Car_Owner,
House_Owner,
Personal_loan,
contact,
Customer_Job,
Income,
Cust_Satisfaction_Score)
from 'C:\Users\avikd\Desktop\dashboard\cust_add (1).csv'
delimiter ','
csv header;

select * from customer_info;