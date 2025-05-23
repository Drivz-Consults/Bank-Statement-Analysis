SELECT * FROM team.statement;
SELECT 
  Date_col,
  STR_TO_DATE(Date_col, '%d %m %Y') AS converted_date,
  MONTHNAME(STR_TO_DATE(Date_col, '%d %m %Y')) AS month_name
FROM team.statement;
ALTER TABLE team.statement
DROP COLUMN month_name;
ALTER TABLE team.statement ADD COLUMN month_name varchar(20);
UPDATE team.statement
SET month_name = MONTHNAME(STR_TO_DATE(Date_col, '%d %m %Y'));
SELECT month_name FROM team.statement;