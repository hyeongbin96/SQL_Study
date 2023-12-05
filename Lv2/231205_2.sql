SELECT
    CAR_ID,
    ROUND(AVG(DATEDIFF(END_DATE, START_DATE)+1), 1) AS AVERAGE_DURATION
FROM 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY
    CAR_ID
HAVING
    AVERAGE_DURATION >= 7
ORDER BY
    AVERAGE_DURATION DESC,
    CAR_ID DESC

### 해석
ROUND 함수로 소수점 2번째 자리에서 반올림 = ROUND(값, number)
DATEDIFF = 날짜의 차이 리턴 (값2 - 값1) // +1 한 이유는 1일 ~ 2일 인 경우 총 1일 대여가 아닌 2일 이기 때문
    > (2일 - 1일) = 1일 이지만 총 대여일은 2일
 CAR_ID를 GROUP BY로 묶고 HABING 절에 평균 대여 기간이 7일 이상인 조건 검