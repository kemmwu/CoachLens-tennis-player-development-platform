
    
    

with all_values as (

    select
        dominant_hand as value_field,
        count(*) as n_records

    from `tennis_dev`.`silver_stg`.`stg_students`
    group by dominant_hand

)

select *
from all_values
where value_field not in (
    'right','left'
)


