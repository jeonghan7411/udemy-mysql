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