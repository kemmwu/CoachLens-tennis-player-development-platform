
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select extraction_confidence
from `tennis_dev`.`silver_stg`.`stg_training_sessions`
where extraction_confidence is null



  
  
      
    ) dbt_internal_test