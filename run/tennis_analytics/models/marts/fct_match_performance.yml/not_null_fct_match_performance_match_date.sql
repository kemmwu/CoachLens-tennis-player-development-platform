
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select match_date
from `tennis_dev`.`silver_gold`.`fct_match_performance`
where match_date is null



  
  
      
    ) dbt_internal_test