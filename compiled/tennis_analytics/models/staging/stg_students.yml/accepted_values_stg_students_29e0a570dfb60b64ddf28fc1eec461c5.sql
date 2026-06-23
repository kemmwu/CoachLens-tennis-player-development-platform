
    
    

with all_values as (

    select
        competition_level as value_field,
        count(*) as n_records

    from `tennis_dev`.`silver_stg`.`stg_students`
    group by competition_level

)

select *
from all_values
where value_field not in (
    'competitive','recreational'
)


