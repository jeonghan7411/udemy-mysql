SELECT
  birthdate
  , DAY(birthdate)
  , DAYOFWEEK(birthdate)
  , DAYOFYEAR(birthdate)
FROM
  people;

  SELECT
    birthdate
    , MONTHNAME(birthdate)
    , YEAR(birthdate)
  FROM people;

  등등 년도만 가져오기, 무슨요일인지(숫자로 가져오는데 일요일 : 1 ) ,일, 월 가져오기등 간편한 함수들이 있음! 문석참고!

SELECT
  birthtime
  , HOUR(birthtime)
  , MINUTE(birthtime)
FROM
  people;


SELECT
  birthtime
  , MONTH(birthtime)
  , DAY(birthtime)
  , HOUR(birthtime)
  , MINUTE(birthtime)
FROM
  people;

  시간/분/초 를가지고올수도 있음!



============================================================
날짜 일수 구해주는 함수 (날짜 정보로만 비교해줌)
DATEDIFF

select DATEDIFF(CURDATE(),'2022-10-10')  -> 비교하고자하는 두날짜를 파라미터 값으로 넣어주면 차이를 계산해준다 


DATE_ADD , DATE_SUB 등도 있음. 

DATE_ADD : 일정날짜를 더하기 1일후 1년후 등등
DATE_SUB : 일정날짜를 빼기 1일후 1년후 등등

SELECT  
  DATE_ADD(CURDATE(), INTERVAL 1  YEAR)   DAY,MONTH,YEAR 

  ============================================================

  TIMESTAMP   ( 날짜와 시간을 더한것)


  ============================================================
  CREATE TABLE captions (
    text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP
  );
  
  CREATE TABLE captions2 (
    text VARCHAR(150),
    created_at TIMESTAMP default CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  );

  ON UPDATE를 컬럼에 기본 설정을하게되면 업데이트가 이뤄질때마다 현재시간으로 저장이됨

  DATETIME으로 사용이 가능하지만 TIMESTAMP가 공간을 더 차지하며 훨씬 더 좁은 범위의 날짜를 지원함

============================================================

-- What's a good use case for CHAR?
 
-- Used for text that we know has a fixed length, e.g., State abbreviations, 
-- abbreviated company names, etc.
 
CREATE TABLE inventory (
    item_name VARCHAR(100),
    price DECIMAL(8,2),
    quantity INT
);
 
-- What's the difference between DATETIME and TIMESTAMP?
 
-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.
 
 
SELECT CURTIME();
 
SELECT CURDATE();
 
SELECT DAYOFWEEK(CURDATE());
SELECT DAYOFWEEK(NOW());
SELECT DATE_FORMAT(NOW(), '%w') + 1;
 
SELECT DAYNAME(NOW());
SELECT DATE_FORMAT(NOW(), '%W');
 
SELECT DATE_FORMAT(CURDATE(), '%m/%d/%Y');
 
SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i');
 
CREATE TABLE tweets(
    content VARCHAR(140),
    username VARCHAR(20),
    created_at TIMESTAMP DEFAULT NOW()
);
 
INSERT INTO tweets (content, username) VALUES('this is my first tweet', 'coltscat');
SELECT * FROM tweets;
 
INSERT INTO tweets (content, username) VALUES('this is my second tweet', 'coltscat');
SELECT * FROM tweets;