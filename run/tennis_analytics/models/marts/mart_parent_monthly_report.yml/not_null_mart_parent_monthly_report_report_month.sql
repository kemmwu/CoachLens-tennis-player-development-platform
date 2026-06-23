
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select report_month
from `tennis_dev`.`silver_gold`.`mart_parent_monthly_report`
where report_month is null



  
  
      
    ) dbt_internal_test