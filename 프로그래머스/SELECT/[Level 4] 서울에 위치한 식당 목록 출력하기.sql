SELECT a.REST_ID AS REST_ID
    , a.REST_NAME AS REST_NAME
    , a.FOOD_TYPE AS FOOD_TYPE
    , a.FAVORITES AS FAVORITES
    , a.ADDRESS AS ADDRESS
    , ROUND(AVG(b.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO AS a
INNER JOIN REST_REVIEW AS b
ON a.REST_ID = b.REST_ID
GROUP BY a.REST_ID
HAVING a.ADDRESS LIKE '서울%'
ORDER BY SCORE DESC, FAVORITES DESC;