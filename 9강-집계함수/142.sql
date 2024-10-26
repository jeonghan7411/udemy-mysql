Group By 로 Min 및 Max 사용하기


SELECT
	CONCAT(author_fname, ' ', author_lname) as author
	,	COUNT(*)
FROM
	books 
WHERE 1=1
GROUP BY author;