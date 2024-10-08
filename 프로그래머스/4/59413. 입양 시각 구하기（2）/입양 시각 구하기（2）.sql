-- 코드를 입력하세요
SELECT A.HOUR, COUNT(B.DATETIME) AS COUNT
FROM (SELECT LEVEL-1 AS HOUR
     FROM DUAL
     CONNECT BY LEVEL<=24) 
     A LEFT OUTER JOIN ANIMAL_OUTS B
ON HOUR = TO_CHAR(B.DATETIME,'HH24')
GROUP BY HOUR
ORDER BY HOUR