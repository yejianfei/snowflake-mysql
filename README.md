# snowflake-mysql

using twitter snowflake on mysql function. it's create global auto increment table to provide database level id generator. 

***notice: the generator function used mysql `REPLACE INTO` statement, so you can't be use `AUTO_INCREMENT` on other tables.***

## usage

- if you want use your own epoch day. you can change the function variable of epoch,find it at   [gen_ticket64.sql](https://raw.githubusercontent.com/yejianfei/snowflake-mysql/master/gen_ticket64.sql).
- when you have multiple databases to want using it, you must be change the function variable of node on each database.find it at [gen_ticket64.sql](https://raw.githubusercontent.com/yejianfei/snowflake-mysql/master/gen_ticket64.sql).
- execute [tb_tickets.sql](https://raw.githubusercontent.com/yejianfei/snowflake-mysql/master/tb_tickets.sql) first to create global auto increment table, then execute [gen_ticket64.sql](https://raw.githubusercontent.com/yejianfei/snowflake-mysql/master/gen_ticket64.sql) to create the mysql function.
- use `SELECT gen_ticket64()` statement get id.
