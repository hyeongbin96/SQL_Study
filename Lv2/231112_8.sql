### IF문으로 해결
SELECT
    ANIMAL_ID,
    NAME,
    IF(SEX_UPON_INTAKE LIKE '%Neutered%' OR SEX_UPON_INTAKE LIKE '%Spayed%', 'O', 'X') AS 중성화
FROM
    ANIMAL_INS

### CASE 문으로 해결
SELECT ANIMAL_ID, NAME,
       CASE WHEN SEX_UPON_INTAKE LIKE '%Neutered%' OR SEX_UPON_INTAKE LIKE '%Spayed%'
            THEN 'O'
            ELSE 'X'
       END AS 중성화
FROM ANIMAL_INS
