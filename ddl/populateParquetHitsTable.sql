INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=01;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=02;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=03;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=04;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=05;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=06;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=07;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=08;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=09;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=10;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=11;
INSERT INTO bdm27.hitsParquet partition( year, month) SELECT * from bdm27.hits WHERE year=2013 AND month=12;

REFRESH bdm27.hitsParquet;
COMPUTE STATS bdm27.hitsParquet;

