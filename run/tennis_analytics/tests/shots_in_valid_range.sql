
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Test: shots_in must be between 0 and 1
select
    session_id,
    shots_in
from `tennis_dev`.`silver_stg`.`stg_training_sessions`
where shots_in is not null
  and (shots_in < 0 or shots_in > 1)
  
  
      
    ) dbt_internal_test