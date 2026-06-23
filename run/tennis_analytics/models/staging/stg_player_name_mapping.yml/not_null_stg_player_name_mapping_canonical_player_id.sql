
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select canonical_player_id
from `tennis_dev`.`silver_stg`.`stg_player_name_mapping`
where canonical_player_id is null



  
  
      
    ) dbt_internal_test