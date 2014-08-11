
SET mapreduce.output.fileoutputformat.compress=true;
SET hive.exec.compress.output=true;
SET mapreduce.output.fileoutputformat.compress.codec=com.hadoop.compression.lzo.LzopCodec;

DROP TABLE IF EXISTS bdm27.hitsLZO;

CREATE EXTERNAL TABLE IF NOT EXISTS bdm27.hitsLZO (
	day INT,
	ts INT,
	synthetic INT,
	localtradetimestamp INT,
	ticker STRING,
	lastPrice DOUBLE,
	vol INT,
	locnum INT,
	eventtype STRING,
	priceQual STRING,
	tradeQual STRING,
	eventQual STRING,
	contributor STRING,
	bidprice DOUBLE,
	bidsize INT,
	bidqual STRING,
	bidtime INT,
	askprice DOUBLE,
	asksize INT,
	askqual STRING,
	asktime INT,
	session INT

) 
PARTITIONED BY (year INT, month INT)
ROW FORMAT DELIMITED FIELDS TERMINATED BY "\;"
STORED AS
    INPUTFORMAT 'com.hadoop.mapred.DeprecatedLzoTextInputFormat'
    OUTPUTFORMAT 'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat';



USE bdm27;

ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=01) LOCATION "/user/impala/bdm-lzo/2013/01";

ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=02) LOCATION "/user/impala/bdm-lzo/2013/02";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=03) LOCATION "/user/impala/bdm-lzo/2013/03";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=04) LOCATION "/user/impala/bdm-lzo/2013/04";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=05) LOCATION "/user/impala/bdm-lzo/2013/05";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=06) LOCATION "/user/impala/bdm-lzo/2013/06";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=07) LOCATION "/user/impala/bdm-lzo/2013/07";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=08) LOCATION "/user/impala/bdm-lzo/2013/08";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=09) LOCATION "/user/impala/bdm-lzo/2013/09";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=10) LOCATION "/user/impala/bdm-lzo/2013/10";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=11) LOCATION "/user/impala/bdm-lzo/2013/11";
ALTER TABLE hitsLZO ADD PARTITION (year=2013,month=12) LOCATION "/user/impala/bdm-lzo/2013/12";


-- DONT FORGET TO RUN THIS IN IMPALA SHELL!!!
-- 	INVALIDATE METADATA
-- 	REFRESH bdm27.hitsLZO;
--	COMPUTE STATS bdm27.hitsLZO;
