#################### limit 사용
SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    PRODUCT_CD,
    CATEGORY,
    PRICE
FROM
    FOOD_PRODUCT
ORDER BY
    PRICE DESC
LIMIT 1

#################### MAX , 서브쿼리
SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    PRODUCT_CD,
    CATEGORY,
    PRICE
FROM
    FOOD_PRODUCT
WHERE
    PRICE = (
        SELECT 
            MAX(PRICE) 
        FROM 
            FOOD_PRODUCT
    )