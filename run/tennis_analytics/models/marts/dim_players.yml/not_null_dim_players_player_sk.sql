
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select player_sk
from `tennis_dev`.`silver_gold`.`dim_players`
where player_sk is null



  
  
      
    ) dbt_internal_test