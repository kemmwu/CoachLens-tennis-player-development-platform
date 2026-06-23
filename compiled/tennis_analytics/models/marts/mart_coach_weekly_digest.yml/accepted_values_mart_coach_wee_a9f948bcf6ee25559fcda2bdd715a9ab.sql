
    
    

with all_values as (

    select
        score_trend as value_field,
        count(*) as n_records

    from `tennis_dev`.`silver_gold`.`mart_coach_weekly_digest`
    group by score_trend

)

select *
from all_values
where value_field not in (
    'improving','declining','stable'
)


