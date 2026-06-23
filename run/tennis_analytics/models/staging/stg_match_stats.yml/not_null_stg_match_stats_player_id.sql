
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select player_id
from `tennis_dev`.`silver_stg`.`stg_match_stats`
where player_id is null



  
  
      
    ) dbt_internal_test