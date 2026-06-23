
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Test: match_date cannot be in the future
select
    match_id,
    match_date
from `tennis_dev`.`silver_stg`.`stg_match_stats`
where match_date > current_date()
  
  
      
    ) dbt_internal_test