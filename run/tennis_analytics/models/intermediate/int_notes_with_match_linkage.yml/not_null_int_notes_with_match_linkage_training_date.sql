
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select training_date
from `tennis_dev`.`silver_int`.`int_notes_with_match_linkage`
where training_date is null



  
  
      
    ) dbt_internal_test