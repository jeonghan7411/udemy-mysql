SELECT 
    first_name, last_name, order_date, amount
FROM
    customers
        LEFT JOIN
    orders ON orders.customer_id = customers.id;
 
 
SELECT 
    order_date, amount, first_name, last_name
FROM
    orders
        LEFT JOIN
    customers ON orders.customer_id = customers.id;

    첫번째 테이블의 모든 데이터 (두번째 테이블의 겹치는 데이터 까지)