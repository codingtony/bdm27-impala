data = LOAD '$data';
dataG = GROUP data ALL;
count = FOREACH dataG GENERATE COUNT(data);
dump count;
