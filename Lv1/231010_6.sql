SELECT
    B.TITLE,
    B.BOARD_ID,
    R.REPLY_ID,
    R.WRITER_ID,
    R.CONTENTS,
    DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM 
    USED_GOODS_BOARD B, 
    USED_GOODS_REPLY R
WHERE
    B.BOARD_ID = R.BOARD_ID
AND
    B.CREATED_DATE LIKE '2022-10%'
ORDER BY 
    R.CREATED_DATE ASC,
    B.TITLE ASC

SELECT 
    B.TITLE, 
    B.BOARD_ID, 
    R.REPLY_ID, 
    R.WRITER_ID, 
    R.CONTENTS, 
    DATE_FORMAT(R.CREATED_DATE, '%Y-%m-%d') AS CREATED_DATE
FROM 
    USED_GOODS_BOARD AS B
INNER JOIN 
    USED_GOODS_REPLY AS R ON B.BOARD_ID = R.BOARD_ID
WHERE 
    B.CREATED_DATE LIKE '2022-10%'
ORDER BY 
    R.CREATED_DATE ASC, 
    B.TITLE ASC

###
JOIN

FROM TABLE A, TABLE B 인 경우 B.BOARD_ID = R.BOARD_ID의 의미