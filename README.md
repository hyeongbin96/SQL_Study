# SQL 공부
📌 프로그래머스 SQL Lv 1~3<br>
📌 MYSQL

## 날짜 체크
### Lv. 1
|날짜|정답여부|문법|유형|비고|
|:-------:|:--:|:---:|:-----:|:----:|
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
|23-10-10|X|STRING, DATE|자동차 대여 기록에서 장기/단기 대여 구분하기|IF, DATEDIFF, WHENCASE|
|23-10-10|O|STRING, DATE|특정 옵션이 포함된 자동차 리스트 구하기|INSTR, REGEXP|
|23-10-15|X|SELECT|조건에 부합하는 중고거래 댓글 조회하기|JOIN|