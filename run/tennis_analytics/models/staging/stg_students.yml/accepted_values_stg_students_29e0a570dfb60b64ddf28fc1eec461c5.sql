
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

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



  
  
      
    ) dbt_internal_test