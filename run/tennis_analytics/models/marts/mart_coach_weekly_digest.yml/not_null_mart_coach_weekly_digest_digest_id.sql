
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select digest_id
from `tennis_dev`.`silver_gold`.`mart_coach_weekly_digest`
where digest_id is null



  
  
      
    ) dbt_internal_test