
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select session_date
from `tennis_dev`.`silver_stg`.`stg_training_sessions`
where session_date is null



  
  
      
    ) dbt_internal_test