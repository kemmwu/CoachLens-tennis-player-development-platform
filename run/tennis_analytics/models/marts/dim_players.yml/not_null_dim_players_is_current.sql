
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select is_current
from `tennis_dev`.`silver_gold`.`dim_players`
where is_current is null



  
  
      
    ) dbt_internal_test