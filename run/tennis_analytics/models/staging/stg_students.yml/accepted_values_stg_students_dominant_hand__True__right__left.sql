
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

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



  
  
      
    ) dbt_internal_test