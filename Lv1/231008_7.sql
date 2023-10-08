SELECT ANIMAL_ID, NAME, DATETIME
FROM ANIMAL_INS
ORDER BY NAME ASC, DATETIME DESC

###
첫 번째 order by를 수행했을 때 동일한 값을 가진 데이터가 있으면 뒤에 오는 order by에 의해 정렬된다.