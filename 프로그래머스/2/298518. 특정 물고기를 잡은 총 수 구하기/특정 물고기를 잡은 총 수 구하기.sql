/* FISH_INFO 테이블에서 잡은 BASS와 SNAPPER의 수를 출력 */

select count(*) from fish_info f
  join FISH_NAME_INFO i using(fish_type)
 where i.fish_name in ('bass', 'snapper');