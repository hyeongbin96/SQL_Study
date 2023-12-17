### 최초 풀이
SELECT
    ANIMAL_ID,
    NAME
FROM
    (
        SELECT
            I.NAME,
            I.ANIMAL_ID,
            I.ANIMAL_TYPE,
            DATEDIFF(O.DATETIME, I.DATETIME) AS DATETIME
        FROM
            ANIMAL_INS I,
            ANIMAL_OUTS O
        WHERE
            I.ANIMAL_ID = O.ANIMAL_ID
        ORDER BY
            DATETIME DESC
        LIMIT
            2
    ) A;

### 더 간단하게
SELECT
    I.ANIMAL_ID,
    I.NAME
FROM
    ANIMAL_INS I,
    ANIMAL_OUTS O
WHERE
    I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY
    DATEDIFF(O.DATETIME, I.DATETIME) DESC
LIMIT
    2;

############# 다른 사람들 풀이
SELECT
    I.ANIMAL_ID,
    I.NAME
FROM
    ANIMAL_INS AS I
    RIGHT JOIN ANIMAL_OUTS AS O ON I.ANIMAL_ID = O.ANIMAL_ID
ORDER BY
    DATEDIFF(O.DATETIME, I.DATETIME) DESC
LIMIT
    2;

> 대부분 조인을 사용해서 품