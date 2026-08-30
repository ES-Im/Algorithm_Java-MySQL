select count(id) 
  from fish_info f
 where year(f.time) = '2021'
