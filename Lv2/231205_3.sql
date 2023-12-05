SELECT
    BOARD_ID,
    WRITER_ID,
    TITLE,
    PRICE,
    CASE 
        WHEN (STATUS = 'SALE') THEN '판매중'
        WHEN (STATUS = 'RESERVED') THEN '예약중'
        WHEN (STATUS = 'DONE') THEN '거래완료'
    END AS STATUS
FROM
    USED_GOODS_BOARD
WHERE
    DATE_FORMAT(CREATED_DATE, '%Y-%m-%d') = '2022-10-05'
ORDER BY
    BOARD_ID DESC

### CASE WHEN
CASE
    WHEN 조건1 THEN '값'
    WHEN 조건3 THEN '값'
    WHEN 조건3 THEN '값'
    ELSE '기본값'
END

>>> WHEN (STATUS = 'SALE') 에서 SALE을 ''로 묶어주지 않아서 오답이었음