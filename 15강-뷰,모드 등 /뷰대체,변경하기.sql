CREATE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;

-- 없으면 생성 , 존재하면 해당 쿼리로 내용 변경 
CREATE OR REPLACE VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year DESC;



 
ALTER VIEW ordered_series AS
SELECT * FROM series ORDER BY released_year;
 
DROP VIEW ordered_series;


