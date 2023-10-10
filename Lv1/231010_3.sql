SELECT 
    ROUND(AVG(DAILY_FEE), 0) AS AVERAGE_FEE
FROM
    CAR_RENTAL_COMPANY_CAR
WHERE 
    CAR_TYPE = 'SUV'

### ROUND, AVG
AVG = 평균
ROUND (숫자, 소수점 자리수) = 숫자를 지정된 자릿수로 반올림하는데 사용하는 함수
* 소수점 자리수가 양수인 경우 소수점 오른쪽, 음수인 경우 소수점 왼쪽으로 반올림

ex) 
    ROUND(123.123, 0) = 123
    ROUND(123.123, 1) = 123.1
    ROUND(123.123, -2) = 100