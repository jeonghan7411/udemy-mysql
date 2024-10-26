-- 유데미 mysql 강 -- 
-- 섹션 7 start ===========================================================================
SELECT
	CONCAT(SUBSTR(title, 1, 10), '...') AS short_title
FROM
	books
	
	
SELECT 
	CONCAT(
		SUBSTR(author_fname, 1, 1), '.', SUBSTR(author_lname, 1, 1), '.' 
	) AS author_initials
from
	books ;

SELECT
	REPLACE(title, ' ', '-')
FROM
	books b ;


SELECT 
	REVERSE(author_fname)
from
	books;

SELECT 
	CONCAT(author_fname, REVERSE(author_fname))
from
	books b
	

SELECT 
	CHAR_LENGTH(title) 
FROM
	books b 
	
	
	select LOWER(title) from books b 
	
	select upper(title) from books b 
	
	
	
select 
		CONCAT(
			'I LOVE', UPPER(title), ' !!!' 
		)
FROM
		books b
	
		
		select TRIM('   zz    zzz')
		
		

-- ex CHAR
-- 1
SELECT 
	REVERSE(	UPPER('Why does my cat look at me with such hatered?'))
	
-- 2
SELECT 
	REPLACE (
		CONCAT(
			'I', ' ', 'like', ' ', 'cats'),
			' ',
			'-'
	);

-- 3
SELECT 
	REPLACE (title,' ','->') AS title
FROM
	books b 
		
-- 4
SELECT 
	author_lname  as forwards,
	REVERSE(author_lname) AS backwards 
FROM 
	books b 
	
-- 5
SELECT 
	UPPER(CONCAT(author_fname , ' ', author_lname)) AS 'full name in caps'
FROM
	books b
	
-- 6
SELECT 
	CONCAT(
		title, ' was released in ', released_year 
	) as blurb
FROM 
	books b 
	
-- 7
SELECT 
	title
	,	CHAR_LENGTH(title) as 'character count' 
FROM 
	books b 
	
-- 8
SELECT 
	CONCAT(
		SUBSTR(title, 1, 10),
		'...'
	) 
	,
	CONCAT(author_lname, ',', author_fname) as author
	,
	CONCAT(stock_quantity , ' in stock') as quantity
FROM 
	books b
	
-- 섹션 7 end ===========================================================================
	
-- 섹션 8 start	===========================================================================
	
-- 	데이터 추가 
	INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256), 
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
          
          
	SELECT	* FROM books b 


	SELECT	DISTINCT(author_lname) FROM books b 
	
	
	SELECT	DISTINCT(released_year) FROM books b
	
	SELECT	DISTINCT(CONCAT(author_fname , '',author_lname)) FROM books b
	
	select DISTINCT author_fname, author_lname, released_year  from books b 
	
	SELECT book_id ,title,author_lname FROM books b order by 1 DESC 
	
	SELECT author_lname, released_year, title from books b order by author_lname, released_year  ;
	
	select concat(author_fname,' ', author_lname) as author from books b order by author  


	select book_id, title, released_year from books b  order by book_id desc limit 0,10
	
	select book_id, title, released_year,author_fname  from books b where author_fname LIKE ('%da%')
	
	select * from books b where title LIKE ('%\_%')
	
-- 	연습문제
	
-- 	1
	select title from books b where title like('%stories%')
	
-- 	2
	SELECT title, pages from books b order by pages desc limit 1
	
-- 	3
	SELECT (CONCAT(title,' - ',released_year)) as summary FROM books b order by released_year desc limit 3
	
-- 	4
	SELECT title,author_lname  author_lname from books b WHERE author_lname LIKE ('% %')
	
-- 	5
	SELECT title, released_year, stock_quantity from books b order by stock_quantity,title  LIMIT 3
	
-- 	6
	SELECT title,author_lname from books b order by author_lname,title 
	

-- 	7
	SELECT UPPER(CONCAT('my favorite author is ',author_fname,' ',author_lname,' !!')) as yell from books b order by author_lname asc
	
-- 섹션 8 end	===========================================================================
	
-- 섹션 9	 start	===========================================================================
		
	SELECT * FROM books b 
	
	SELECT count(*) FROM books b
	
	SELECT count(DISTINCT author_fname) from books b
	
	insert into books () values ();

	SELECT COUNT(DISTINCT released_year)  from books b
	
	select title from books b where title like ('%the%')
	
	select author_lname,count(*) as books_written from books b group by author_lname order by books_written desc
	
	select released_year,count(*)  from books b group by released_year
	
	SELECT MAX(released_year) from books b  
	
	SELECT Min(pages) from books b
	
	select min(author_lname), max(author_lname) from books b 
	
	select title,pages  from books b order by pages  desc limit 1
	
	select title,pages  from books b where pages = (select max(pages) from books b2)
	
	insert into books (title,pages) values ('my life in words', 634)
	
	select min(released_year) from books b 
	
	select title, released_year from books b where released_year = (SELECT MIN(released_year) from books b2)
	
-- 섹션 9 end	===========================================================================
		
	SELECt
	author_fname,
	author_lname,
	COUNT(*)
FROM
	books
GROUP BY
	author_lname,
	author_fname ;


# 쿼리를 작성하는 목표, 확인할 지표:
# 쿼리 계산 방법 :
# 데이터의 기간 :
# 사용할 테이블 :
# Join KEY : 
# 데이터 특징 :

SELECT
	CONCAT(author_fname, ' ', author_lname) as author
	,	COUNT(*)
FROM
	books 
WHERE 1=1
GROUP BY author;



	
	
	
	
	
	
	
		

		
		
		
	
	
	