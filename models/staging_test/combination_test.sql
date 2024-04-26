select * from {{ ref('test_table') }}
union all
select * from {{ ref('test_table_1') }}
union all
select * from {{ ref('test_table_2') }}