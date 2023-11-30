'''

출처: https://school.programmers.co.kr/learn/courses/30/lessons/133025

'''


SELECT a.FLAVOR 
FROM FIRST_HALF AS a 
LEFT JOIN ICECREAM_INFO AS b 
ON a.FLAVOR = b.FLAVOR
WHERE a.TOTAL_ORDER > 3000 AND b.INGREDIENT_TYPE LIKE 'fruit_based'
ORDER BY a.TOTAL_ORDER DESC;