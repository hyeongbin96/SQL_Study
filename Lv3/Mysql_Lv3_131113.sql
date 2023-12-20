SELECT
    ORDER_ID,
    PRODUCT_ID,
    DATE_FORMAT(OUT_DATE, '%Y-%m-%d') AS OUT_DATE,
    CASE
        WHEN (OUT_DATE <= '2022-05-01') THEN '출고완료'
        WHEN (OUT_DATE > '2022-05-01') THEN '출고대기'
        ELSE '출고미정'
    END AS '출고여부'
FROM
    FOOD_ORDER
ORDER BY
    ORDER_ID ASC;

### 풀이
케이스로 해결;

DATE을 '' 로 묶어줘야됨;

다른 사람 풀이를 보니 2022 년도로 제한하지 않기 위해 '%m-%d' 로 한번 더 날짜 형식을 지정해줌
WHEN DATE_FORMAT(OUT_DATE, '%m-%d') <= '05-51'