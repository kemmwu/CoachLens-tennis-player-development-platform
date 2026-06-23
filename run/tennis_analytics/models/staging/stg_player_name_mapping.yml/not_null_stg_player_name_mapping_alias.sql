
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select alias
from `tennis_dev`.`silver_stg`.`stg_player_name_mapping`
where alias is null



  
  
      
    ) dbt_internal_test