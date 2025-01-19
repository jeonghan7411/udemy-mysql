-- To View Modes:
SELECT @@GLOBAL.sql_mode;
SELECT @@SESSION.sql_mode;
 
-- To Set Them:
SET GLOBAL sql_mode = 'modes';
SET SESSION sql_mode = 'modes';


  GLOBAL은 전역으로 설정할 수 있고
  SESSION은 일회성이라고 보면됨

  