SELECT
    *
FROM
    PLACES
WHERE
    HOST_ID IN (
        SELECT
            HOST_ID
        FROM
            PLACES
        GROUP BY
            HOST_ID
        HAVING
            COUNT(HOST_ID) > 1
    )
ORDER BY
    ID ASC;

#### 풀이
서브 쿼리를 통해 HOST_ID가 2 개 이상인 데이터 조회 후 메인 쿼리에서 HOST_ID에 조건을 걸어 해결;

조인으로도 가능