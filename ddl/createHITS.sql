DROP TABLE IF EXISTS bdm27.hits;
DROP DATABASE IF EXISTS bdm27;
CREATE DATABASE bdm27;
CREATE EXTERNAL TABLE bdm27.hits (
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
LOCATION '/user/impala/bdm/';




ALTER TABLE bdm27.hits ADD PARTITION (year=2008,month=11) SET LOCATION "/user/impala/bdm/2008/11";
ALTER TABLE bdm27.hits ADD PARTITION (year=2008,month=12) SET LOCATION "/user/impala/bdm/2008/12";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=01) SET LOCATION "/user/impala/bdm/2009/01";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=02) SET LOCATION "/user/impala/bdm/2009/02";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=03) SET LOCATION "/user/impala/bdm/2009/03";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=04) SET LOCATION "/user/impala/bdm/2009/04";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=05) SET LOCATION "/user/impala/bdm/2009/05";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=06) SET LOCATION "/user/impala/bdm/2009/06";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=07) SET LOCATION "/user/impala/bdm/2009/07";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=08) SET LOCATION "/user/impala/bdm/2009/08";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=09) SET LOCATION "/user/impala/bdm/2009/09";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=10) SET LOCATION "/user/impala/bdm/2009/10";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=11) SET LOCATION "/user/impala/bdm/2009/11";
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=12) SET LOCATION "/user/impala/bdm/2009/12";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=01) SET LOCATION "/user/impala/bdm/2010/01";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=02) SET LOCATION "/user/impala/bdm/2010/02";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=03) SET LOCATION "/user/impala/bdm/2010/03";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=04) SET LOCATION "/user/impala/bdm/2010/04";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=05) SET LOCATION "/user/impala/bdm/2010/05";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=06) SET LOCATION "/user/impala/bdm/2010/06";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=07) SET LOCATION "/user/impala/bdm/2010/07";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=08) SET LOCATION "/user/impala/bdm/2010/08";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=09) SET LOCATION "/user/impala/bdm/2010/09";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=10) SET LOCATION "/user/impala/bdm/2010/10";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=11) SET LOCATION "/user/impala/bdm/2010/11";
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=12) SET LOCATION "/user/impala/bdm/2010/12";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=01) SET LOCATION "/user/impala/bdm/2011/01";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=02) SET LOCATION "/user/impala/bdm/2011/02";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=03) SET LOCATION "/user/impala/bdm/2011/03";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=04) SET LOCATION "/user/impala/bdm/2011/04";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=05) SET LOCATION "/user/impala/bdm/2011/05";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=06) SET LOCATION "/user/impala/bdm/2011/06";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=07) SET LOCATION "/user/impala/bdm/2011/07";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=08) SET LOCATION "/user/impala/bdm/2011/08";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=09) SET LOCATION "/user/impala/bdm/2011/09";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=10) SET LOCATION "/user/impala/bdm/2011/10";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=11) SET LOCATION "/user/impala/bdm/2011/11";
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=12) SET LOCATION "/user/impala/bdm/2011/12";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=01) SET LOCATION "/user/impala/bdm/2012/01";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=02) SET LOCATION "/user/impala/bdm/2012/02";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=03) SET LOCATION "/user/impala/bdm/2012/03";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=04) SET LOCATION "/user/impala/bdm/2012/04";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=05) SET LOCATION "/user/impala/bdm/2012/05";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=06) SET LOCATION "/user/impala/bdm/2012/06";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=07) SET LOCATION "/user/impala/bdm/2012/07";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=08) SET LOCATION "/user/impala/bdm/2012/08";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=09) SET LOCATION "/user/impala/bdm/2012/09";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=10) SET LOCATION "/user/impala/bdm/2012/10";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=11) SET LOCATION "/user/impala/bdm/2012/11";
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=12) SET LOCATION "/user/impala/bdm/2012/12";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=01) SET LOCATION "/user/impala/bdm/2013/01";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=02) SET LOCATION "/user/impala/bdm/2013/02";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=03) SET LOCATION "/user/impala/bdm/2013/03";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=04) SET LOCATION "/user/impala/bdm/2013/04";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=05) SET LOCATION "/user/impala/bdm/2013/05";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=06) SET LOCATION "/user/impala/bdm/2013/06";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=07) SET LOCATION "/user/impala/bdm/2013/07";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=08) SET LOCATION "/user/impala/bdm/2013/08";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=09) SET LOCATION "/user/impala/bdm/2013/09";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=10) SET LOCATION "/user/impala/bdm/2013/10";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=11) SET LOCATION "/user/impala/bdm/2013/11";
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=12) SET LOCATION "/user/impala/bdm/2013/12";
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=01) SET LOCATION "/user/impala/bdm/2014/01";
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=02) SET LOCATION "/user/impala/bdm/2014/02";
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=03) SET LOCATION "/user/impala/bdm/2014/03";
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=04) SET LOCATION "/user/impala/bdm/2014/04";
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=05) SET LOCATION "/user/impala/bdm/2014/05";
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=06) SET LOCATION "/user/impala/bdm/2014/06";
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=07) SET LOCATION "/user/impala/bdm/2014/07";
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=08) SET LOCATION "/user/impala/bdm/2014/08";

REFRESH bdm27.hits;
COMPUTE STATS bdm27.hits;
