
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    match_sk as unique_field,
    count(*) as n_records

from `tennis_dev`.`silver_gold`.`fct_match_performance`
where match_sk is not null
group by match_sk
having count(*) > 1



  
  
      
    ) dbt_internal_test