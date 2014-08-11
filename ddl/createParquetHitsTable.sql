DROP TABLE IF EXISTS bdm27.hitsParquet;

create external table bdm27.hitsParquet 
LIKE bdm27.hits 
STORED AS PARQUET 
LOCATION '/user/impala/bdm-parquet/';

ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=01) LOCATION "/user/impala/bdm-parquet/2013/01";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=02) LOCATION "/user/impala/bdm-parquet/2013/02";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=03) LOCATION "/user/impala/bdm-parquet/2013/03";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=04) LOCATION "/user/impala/bdm-parquet/2013/04";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=05) LOCATION "/user/impala/bdm-parquet/2013/05";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=06) LOCATION "/user/impala/bdm-parquet/2013/06";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=07) LOCATION "/user/impala/bdm-parquet/2013/07";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=08) LOCATION "/user/impala/bdm-parquet/2013/08";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=09) LOCATION "/user/impala/bdm-parquet/2013/09";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=10) LOCATION "/user/impala/bdm-parquet/2013/10";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=11) LOCATION "/user/impala/bdm-parquet/2013/11";
ALTER TABLE bdm27.hitsParquet ADD PARTITION (year=2013,month=12) LOCATION "/user/impala/bdm-parquet/2013/12";
