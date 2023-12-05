# SQL 공부
📌 프로그래머스 SQL Lv 1~3<br>
📌 MYSQL

## 날짜 체크
### Lv. 1
|날짜|정답|문법|유형|비고|
|:---:|:---:|:---:|:---:|:---:|
|23-10-08|O|SELECT|특정 칼럼 순으로 모든 레코드 조회하기|
|23-10-08|O|SELECT|역순 정렬하기|
|23-10-08|O|SELECT|아픈 동물 찾기|
|23-10-08|O|SELECT|어린 동물 찾기|
|23-10-08|O|IS NULL|이름이 없는 동물의 아이디|
|23-10-08|O|SELECT|동물의 아이디와 이름|
|23-10-08|O|SELECT|여러 기준으로 정렬하기|
|23-10-08|O|SELECT|상위 n개 레코드|
|23-10-08|O|IS NULL|이름이 있는 동물의 아이디|
|23-10-09|O|SUM,MAX,MIN|최댓값 구하기|
|23-10-09|O|SELECT|강원도에 위치한 생산공장 목록 출력하기|
|23-10-09|O|IS NULL|경기도에 위치한 식품창고 목록 출력하기|IFNULL, COALESCE|
|23-10-09|O|IS NULL|나이 정보가 없는 회원 수 구하기|COUNT|
|23-10-09|O|SELECT|조건에 맞는 회원수 구하기|BETWEEN|
|23-10-09|O|SUM,MAX,MIN|가장 비싼 상품 구하기|MAX, LIMIT|
|23-10-09|O|SELECT|12세 이하인 여자 환자 목록 출력하기|IFNULL, COALESCE|
|23-10-09|X|SELECT|흉부외과 또는 일반외과 의사 목록 출력하기|DATE_FORMAT|
|23-10-09|O|SELECT|인기있는 아이스크림|
|23-10-09|X|SELECT|과일로 만든 아이스크림 고르기|서브 쿼리, INNER JOIN|
|23-10-10|O|SELECT|조건에 맞는 도서 리스트 출력하기||
|23-10-10|X|SELECT|평균 일일 대여 요금 구하기|AVG, ROUND|
|23-10-10|X|STRING, DATE|자동차 대여 기록에서 장기/단기 대여 구분하기|IF, DATEDIFF, CASE|
|23-10-10|O|STRING, DATE|특정 옵션이 포함된 자동차 리스트 구하기|INSTR, REGEXP|
|23-10-15|X|SELECT|조건에 부합하는 중고거래 댓글 조회하기|JOIN|

<br>

### Lv. 2
|날짜|정답|문법|유형|비고|
|:---:|:---:|:---:|:---:|:---:|
|23-11-12|O|SUM,MAX,MIN|최솟값 구하기|MIN, LIMIT|
|23-11-12|O|GROUP BY|고양이와 개는 몇 마리 있을까|COUNT, GROUP BY|
|23-11-12|O|GROUP BY|동명 동물 수 맞추기|COUNT, GROUP BY, HAVING|
|23-11-12|O|STRING, DATE|루시와 엘라 찾기|IN|
|23-11-12|O|STRING, DATE|이름에 el이 들어가는 동물 찾기|LIKE|
|23-11-12|O|SUM,MAX,MIN|동물 수 구하기|COUNT|
|23-11-12|O|SUM,MAX,MIN|중복 제거하기|COUNT, DISTINCT|
|23-11-12|X|STRING, DATE|중성화 여부 파악하기|IF, CASE|
|23-11-12|O|IS NULL|NULL 처리하기|IFNULL, COALESCE|
|23-11-12|O|GROUP BY|입양 시간 구하기|HOUR(DATE)|
|23-11-21|O|STRING, DATE|DATETIME에서 형 변환|DATE_FROMAT|
|23-11-21|O|SUM. MAX, MIN|가격이 제일 비싼 식품의 정보 출력하기|MAX, 서브쿼리|
|23-11-21|O|SELECT|3월에 태어난 여성 회원 목록 출력하기|IS NOT NULL|
|23-11-21|X|STRING, DATE|카테고리 별 상품 개수 구하기|LEFT, GROUP BY|
|23-11-21|X|GROUP BY|가격대 별 상품 개수 구하기|FLOOR, TRUNCATE|
|23-11-21|O|SELECT|재구매가 일어난 상품과 회원 리스트 구하기|GROUP BY, HAVING|
|23-12-03|O|GROUP BY|진료과별 총 예약 횟수 출력하기|GROUP BY|
|23-12-03|O|GROUP BY|성분으로 구분한 아이스크림 총 주문량|GROUP BY|
|23-12-03|O|GROUP BY|자동차 종류 별 특정 옵션이 포함된 자동차 수 구하기|GROUP BY, LIKE|
|23-12-05|X|STRING, DATE|자동차 평균 대여 기간 구하기|ROUND, AVG, DATEDIFF|
|23-12-05|O|STRING, DATE|조건에 부합하는 중고거래 상태 조회하기|CASE WHEN|
|||JOIN|상품 별 오프라인 매출 구하기||
|||JOIN|조건에 맞는 도서와 저자 리스트 출력하기||
