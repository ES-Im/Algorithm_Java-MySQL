/*
USED_GOODS_BOARD와 USED_GOODS_USER 테이블에서 중고 거래 게시물을 3건 이상 등록한 사용자
사용자 ID, 닉네임, 전체주소, 전화번호를 조회
- 전체 주소는 시, 도로명 주소, 상세 주소가 함께 출력되도록 해주시고, 전화번호의 경우 xxx-xxxx-xxxx 같은 형태로 하이픈 문자열(-)을 삽입하여 출력
- 회원ID desc
*/


SELECT u.USER_ID as USER_ID
     , u.nickname as NICKNAME
     , concat(u.city, ' ', u.STREET_ADDRESS1, ' ', u.STREET_ADDRESS2) as 전체주소
     , concat(left(u.TLNO, 3), '-', mid(u.TLNO, 4, 4), '-', right(u.TLNO, 4)) as 전화번호
  from USED_GOODS_USER u
  join USED_GOODS_BOARD b on u.user_id = b.writer_id 
  group by user_id having count(user_id) >= 3
  order by 1 desc
