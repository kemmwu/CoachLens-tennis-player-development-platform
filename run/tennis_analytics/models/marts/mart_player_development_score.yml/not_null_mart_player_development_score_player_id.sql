
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select player_id
from `tennis_dev`.`silver_gold`.`mart_player_development_score`
where player_id is null



  
  
      
    ) dbt_internal_test