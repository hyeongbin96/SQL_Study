SELECT FLAVOR 
FROM FIRST_HALF
WHERE TOTAL_ORDER > 3000
AND FLAVOR IN (
                SELECT FLAVOR
                FROM ICECREAM_INFO
                WHERE INGREDIENT_TYPE = 'fruit_based'
              )
ORDER BY total_order desc;

SELECT F.FLAVOR 
FROM FIRST_HALF F
WHERE EXISTS
      (
        SELECT I.FLAVOR
        FROM ICECREAM_INFO I
        WHERE I.FLAVOR = F.FLAVOR AND F.TOTAL_ORDER > 3000 AND I.INGREDIENT_TYPE = 'fruit_based'
        ORDER BY F.TOTAL_ORDER DESC
      )
###
서브 결과에 FLAVOR는 다수개니 AND FLAVOR = 이 아닌 IN
SELECT A.칼럼
FROM TABLE A 
-> TABLE 을 A라는 별칭처럼 사용
