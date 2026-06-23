
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  -- Test: first_serve_pct must be between 0 and 1 when not null
select
    match_id,
    first_serve_pct
from `tennis_dev`.`silver_stg`.`stg_match_stats`
where first_serve_pct is not null
  and (first_serve_pct < 0 or first_serve_pct > 1)
  
  
      
    ) dbt_internal_test