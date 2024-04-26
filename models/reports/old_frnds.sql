select * from 
    {{ ref('combination_test') }}
where ID >= 8