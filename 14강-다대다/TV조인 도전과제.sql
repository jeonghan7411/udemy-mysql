1번 문제

select 
	A.title
	,	B.rating	
from series A
join reviews B
on A.id = B.series_id;



2번 문제

select
	A.title
	, ROUND(AVG(B.rating),2) AS avg_rating
from
	series A
JOIN
	reviews B
ON
	A.id = B.series_id
GROUP BY A.title
order by avg_rating


3번 문제

select
	a.first_name
	,	a.last_name
	,	b.rating
from
	reviewers a
join 
	reviews b
on a.id = b.reviewer_id

4번 문제

select
	a.title as unreviewed_series
from
	series a
left join reviews b
on a.id = b.series_id
where b.rating is null

5번 문제

select
	a.genre
	,	round(avg(b.rating),2) as avg_rating
from
	series a
join
	reviews b
on a.id = b.series_id
group by a.genre

6번 문제
select
	a.first_name
	,	a.last_name
	,	count(b.id) AS COUNT
	,	ifnull(min(b.rating),0) AS MIN
	,	ifnull(max(b.rating),0) AS MAX
	,	ROUND(ifnull(avg(b.rating),0),2) as AVG
	,	case
			when COUNT(b.rating) > 0 then 'ACTIVE'
			ELSE 'INACTIVE'
	end	as STATUS
-- 	,	IF(COUNT(b.rating) > 0, 'ACTIVE', 'INACTIVE') AS STATUS
from
	reviewers a
left join
	reviews b
on a.id = b.reviewer_id
group by a.id

7번 문제
select
	b.title
	,	a.rating
	,	concat(c.first_name, ' ', c.last_name) as reviewr
from
	reviews a
join series b on a.series_id = b.id
join reviewers c on a.reviewer_id = c.id