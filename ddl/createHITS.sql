DROP TABLE IF EXISTS bdm27.hits;
DROP DATABASE IF EXISTS bdm27;
CREATE DATABASE bdm27;
CREATE EXTERNAL TABLE bdm27.hits (
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




ALTER TABLE bdm27.hits ADD PARTITION (year=2008,month=11);
ALTER TABLE bdm27.hits ADD PARTITION (year=2008,month=12);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=01);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=02);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=03);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=04);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=05);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=06);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=07);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=08);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=09);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=10);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=11);
ALTER TABLE bdm27.hits ADD PARTITION (year=2009,month=12);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=01);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=02);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=03);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=04);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=05);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=06);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=07);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=08);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=09);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=10);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=11);
ALTER TABLE bdm27.hits ADD PARTITION (year=2010,month=12);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=01);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=02);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=03);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=04);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=05);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=06);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=07);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=08);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=09);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=10);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=11);
ALTER TABLE bdm27.hits ADD PARTITION (year=2011,month=12);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=01);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=02);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=03);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=04);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=05);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=06);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=07);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=08);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=09);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=10);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=11);
ALTER TABLE bdm27.hits ADD PARTITION (year=2012,month=12);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=01);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=02);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=03);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=04);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=05);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=06);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=07);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=08);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=09);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=10);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=11);
ALTER TABLE bdm27.hits ADD PARTITION (year=2013,month=12);
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=01);
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=02);
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=03);
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=04);
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=05);
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=06);
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=07);
ALTER TABLE bdm27.hits ADD PARTITION (year=2014,month=08);

REFRESH bdm27.hits;
COMPUTE STATS bdm27.hits;
