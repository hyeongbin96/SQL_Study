SELECT
    USER_ID,
    PRODUCT_ID
FROM
    ONLINE_SALE
GROUP BY
    USER_ID,
    PRODUCT_ID
HAVING
    COUNT(*) > 1
ORDER BY
    USER_ID ASC,
    PRODUCT_ID DESC

# SELECT columm 2개를 group으로 묶어 (USER_ID, PRODUCT_ID) 그룹으로 묶인 데이터에 조건을 검