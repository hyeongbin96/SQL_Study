SELECT NAME
FROM ANIMAL_INS
ORDER BY DATETIME ASC limit 1


### 서브쿼리 사용한 답
SELECT NAME
FROM ANIMAL_INS
WHERE DATETIME = (SELECT min(DATETIME) FROM ANIMAL_INS)