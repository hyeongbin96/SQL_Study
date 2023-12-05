SELECT
    CAR_TYPE,
    COUNT(*) AS CARS
FROM    
    CAR_RENTAL_COMPANY_CAR
WHERE
    OPTIONS LIKE '%통풍시트%' OR
    OPTIONS LIKE '%열선시트%' OR
    OPTIONS LIKE '%가죽시트%'
GROUP BY
    CAR_TYPE
ORDER BY
    CAR_TYPE ASC

### WHERE 절에서 IN이 안되는 이유
where OPTIONS IN ('통풍시트', '열선시트', '가죽시트')
위 코드는 옵션으로 통풍시트만 있거나, 열선시트만 있거나, 가죽시트만 있어야 그 결과값이 나옴
즉, 차량 옵션으로 '통풍시트', '네비게이션'이 있을때, '통풍시트'가 있지만 네비게이션 때문에 조회되지 않음

=> 'IN' 연산자가 포함된 'WHERE' 절이 SQL에서 작동하는 방식
=> `WHERE OPTIONS IN ('통풍 시트', '열선 시트', '가죽 시트')'를 사용하면,
'OPTIONS' 열이 지정된 값 ('환기 시트', '열선 시트') 중 하나와 정확히 일치하는 행을 필터링