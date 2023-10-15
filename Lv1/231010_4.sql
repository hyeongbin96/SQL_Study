SELECT
    HISTORY_ID,
    CAR_ID,
    DATE_FORMAT(START_DATE, '%Y-%m-%d') AS START_DATE,
    DATE_FORMAT(END_DATE, '%Y-%m-%d') AS END_DATE,
    IF(DATEDIFF(END_DATE, START_DATE) +1 >= 30, '장기 대여', '단기 대여') AS RENT_TYPE
FROM
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE
    DATE_FORMAT(START_DATE, '%Y-%m-%d') LIKE '2022-09%'
ORDER BY 
    HISTORY_ID DESC

# CASE WHEN 사용한 답
SELECT 
    HISTORY_ID, 
    CAR_ID, 
    DATE_FORMAT(START_DATE, '%Y-%m-%d') AS START_DATE, 
    DATE_FORMAT(END_DATE, '%Y-%m-%d') AS END_DATE, 
CASE WHEN 
    DATEDIFF(END_DATE, START_DATE) + 1 >= 30 
    THEN '장기 대여'
    ELSE '단기 대여' 
    END AS RENT_TYPE
FROM 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY 
WHERE 
    START_DATE LIKE '2022-09%'
ORDER BY 
    HISTORY_ID DESC;

### IF, DATEDIFF, CASE WHEN
IF (조건, 값1, 값2) = 조건과 일치하면 '값1' 일치하지 않으면 '값2'

DATEDIFF (날짜1, 날짜2) = 날짜1과 날짜2의 차이 > 날짜1 - 날짜2
    + 해당 문제에서 +1을 해준 이유는 날짜1과 날짜2과 동일하더라도 대여일은 1일이기 때문

CASE = 조건부로 값을 반환하거나 동작을 수행할 때 사용
1) 단순 케이스
CASE 표현식   
    WHEN 값1 THEN 결과1   
    WHEN 값2 THEN 결과2   
    ...   
    ELSE 기본값
END

2) 조건 케이스
CASE   
    WHEN 조건1 THEN 결과1   
    WHEN 조건2 THEN 결과2   
    ...   
    ELSE 기본값
END