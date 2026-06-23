
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select session_sk
from `tennis_dev`.`silver_gold`.`fct_training_sessions`
where session_sk is null



  
  
      
    ) dbt_internal_test