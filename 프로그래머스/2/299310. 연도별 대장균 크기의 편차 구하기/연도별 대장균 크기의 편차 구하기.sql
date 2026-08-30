/* 분화된 연도(YEAR), 분화된 연도별 대장균 크기의 편차(YEAR_DEV), 대장균 개체의 ID(ID) 를 출력하는 SQL 문을 작성
 - 분화된 연도별 대장균 크기의 편차 : 분화된 연도별 가장 큰 대장균의 크기 - 각 대장균의 크기
 - 연도에 대해 오름차순으로 정렬하고 
 - 같은 연도에 대해서는 대장균 크기의 편차에 대해 오름차순
*/

select 
    year(DIFFERENTIATION_DATE) as year, 
    (max(size_of_colony) over (partition by year(DIFFERENTIATION_DATE)) - size_of_colony) as year_dev,
    id
 from ecoli_data e
 order by 1 asc, 2 asc

