use bdm27;

-- Select count 1 month
explain select count(day) from hitsparquet where Year = 2013 and Month = 7;
select count(day) from hitsparquet where Year = 2013 and Month = 7;

-- Select count 1 year
explain select count(day) from hitsparquet  where Year = 2013;
select count(day) from hitsparquet  where Year = 2013;

-- High/Low IBM 1 month
explain select day,ticker,max(lastPrice) as High ,min(lastPrice) as Low  from   hitsparquet WHERE ticker="IBM" AND lastPrice IS NOT NULL AND YEAR=2013 AND MONTH=07  GROUP by day,ticker ORDER by day;
select day,ticker,max(lastPrice) as High ,min(lastPrice) as Low  from   hitsparquet WHERE ticker="IBM" AND lastPrice IS NOT NULL AND YEAR=2013 AND MONTH=07  GROUP by day,ticker ORDER by day;

-- High/Low IBM 1 year
explain select day,ticker,max(lastPrice) as High ,min(lastPrice) as Low  from   hitsparquet WHERE ticker="IBM" AND lastPrice IS NOT NULL AND YEAR=2013  GROUP by day,ticker ORDER by day;
select day,ticker,max(lastPrice) as High ,min(lastPrice) as Low  from   hitsparquet WHERE ticker="IBM" AND lastPrice IS NOT NULL AND YEAR=2013  GROUP by day,ticker ORDER by day;

-- Inner Join 1 month
explain select distinct a.day FROM hitsparquet a INNER JOIN hitsparquet b USING (day) WHERE (a.month = 07 AND a.ticker = 'IBM' AND a.lastprice > 200.5) AND (b.month = 07 AND b.ticker = 'T' AND b.lastprice > 35.8);
select distinct a.day FROM hitsparquet a INNER JOIN hitsparquet b USING (day) WHERE (a.month = 07 AND a.ticker = 'IBM' AND a.lastprice > 200.5) AND (b.month = 07 AND b.ticker = 'T' AND b.lastprice > 35.8);

-- Inner join 1 year
explain select distinct a.day FROM hitsparquet a INNER JOIN hitsparquet b USING (day) WHERE (a.ticker = 'IBM' AND a.lastprice > 200.5) AND (b.ticker = 'T' AND b.lastprice > 35.8);
select distinct a.day FROM hitsparquet a INNER JOIN hitsparquet b USING (day) WHERE (a.ticker = 'IBM' AND a.lastprice > 200.5) AND (b.ticker = 'T' AND b.lastprice > 35.8);

