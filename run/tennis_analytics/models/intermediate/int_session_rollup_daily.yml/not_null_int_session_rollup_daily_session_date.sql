
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select session_date
from `tennis_dev`.`silver_int`.`int_session_rollup_daily`
where session_date is null



  
  
      
    ) dbt_internal_test