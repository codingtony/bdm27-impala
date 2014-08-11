DROP TABLE IF EXISTS bdm27.hits2013;
CREATE EXTERNAL TABLE bdm27.hits2013 (
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
ROW FORMAT DELIMITED FIELDS TERMINATED BY ';'
LOCATION '/user/impala/bdm2013/';




ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=01) LOCATION "/user/impala/bdm2013/2013/01";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=02) LOCATION "/user/impala/bdm2013/2013/02";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=03) LOCATION "/user/impala/bdm2013/2013/03";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=04) LOCATION "/user/impala/bdm2013/2013/04";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=05) LOCATION "/user/impala/bdm2013/2013/05";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=06) LOCATION "/user/impala/bdm2013/2013/06";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=07) LOCATION "/user/impala/bdm2013/2013/07";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=08) LOCATION "/user/impala/bdm2013/2013/08";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=09) LOCATION "/user/impala/bdm2013/2013/09";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=10) LOCATION "/user/impala/bdm2013/2013/10";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=11) LOCATION "/user/impala/bdm2013/2013/11";
ALTER TABLE bdm27.hits2013 ADD PARTITION (year=2013,month=12) LOCATION "/user/impala/bdm2013/2013/12";

REFRESH bdm27.hits2013;
COMPUTE STATS bdm27.hits2013;
