
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select player_id
from `tennis_dev`.`silver_int`.`int_session_rollup_daily`
where player_id is null



  
  
      
    ) dbt_internal_test