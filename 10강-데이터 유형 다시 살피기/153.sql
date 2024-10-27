-- 기타 데이터형 조사하기
CHAR 타입의 데이터가 저장될때
예를들어 길이가 2 인경우
X 하나만 입력되었다면 남은 길이만큼의 공백이 추가되어 저장됨
하지만 출력 할때는 제거되어서 보이기때문에 확인할순 없음(공식문서에 나와있음)

쿼리의 성능 등을 고려헀을때는 고정된 문자열이면 CHAR를 사용해서 지정해주는것이 성능쪽에서는 좋음



INTEGER / INT / SMALLINT / BIGINT ....


TINYINT   1Bytes  ~127
SMALLINT  2Bytes  ~32767
MEDIUMINT 3Bytes  ~8388607
INT       4Bytes  ~2147483647
BIGINT    8Bytes  ~2 에 63승 -1
  

UNSIGNED를 사용해서 제약조건을 걸 수 있다.


-- DECIMAL    가장 정확함 하지만 더 많은 공간을 차지하게됨
DECIMAL(총 자릿수, 소수점 뒤에 오는 자리수)
ex) DECIMAL(5,2)   ==>  312.23    무조건 5자리가 아니여도 됨. 하지만 소수점 앞에는 3자리가 최대임
만약 312.234 소수점뒤에 3자리가 들어오게 된다면 반올림되어 저장 312.23 



-- FLOAT , DOUBLE 더 적은 공간으로도 더 큰 수나 소수점 아래 숫자가 더 많은 수를 저장가능 하지만 정확성은 떨어짐
FLOAT  4 Bytes    7자리
DOUBLE 8 Bytes    15자리

