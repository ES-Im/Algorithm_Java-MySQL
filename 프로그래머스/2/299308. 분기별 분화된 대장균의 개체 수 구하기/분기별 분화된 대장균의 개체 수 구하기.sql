select concat(quarter(DIFFERENTIATION_DATE), 'Q') as quarter, count(*) as ecoli_count
  from ECOLI_DATA
  group by quarter
  order by quarter asc