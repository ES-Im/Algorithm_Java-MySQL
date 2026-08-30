/* 
    월별 잡은 물고기의 수와 월을 출력
    잡은 물고기 수 컬럼명은 FISH_COUNT, 월 컬럼명은 MONTH
    결과는 월 asc
    월은 숫자형태 (1~12) 로 출력하며 9 이하의 숫자는 두 자리로 출력하지 않습니다. 잡은 물고기가 없는 월은 출력하지 않습니다.
*/

select count(id), month(time) as month
  from fish_info
 group by month
 order by 2 asc