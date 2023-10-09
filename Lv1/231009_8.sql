SELECT 
    DR_NAME, 
    DR_ID, 
    MCDP_CD, 
    DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM 
    DOCTOR
WHERE 
    MCDP_CD = 'CS' OR MCDP_CD = 'GS'
ORDER BY
    HIRE_YMD DESC,
    DR_NAME ASC

### DATE_FORMAT
DATE_FORMAT(columm, '%Y(y), %M(m), %D(d)') = cloumn의 날짜 포맷을 ''로 지정
Y = 2023,
y = 23

M = April
m = 4

D = 1st
d = 1

만약 DATE_FORMAT 없이 HIRE_YMD 칼럼만 조회하면 2020-03-01 00:00:00 이렇게 시분초도 출력된다.
추가로 %Y %m %d 사이에 -, /, : 등을 조합해서 원하는 형식으로 출력하면 된다. 