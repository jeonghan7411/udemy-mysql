SELECT * FROM people WHERE birthtime 
BETWEEN CAST('12:00:00' AS TIME) 
AND CAST('16:00:00' AS TIME);
 
날짜,시간 비교시 CAST로 타입을 변환해서 해주는것이 좋음
CAST를 사용하지 않으면 문자열 상태로 비교하게됨

 
SELECT * FROM people WHERE HOUR(birthtime)
BETWEEN 12 AND 16;