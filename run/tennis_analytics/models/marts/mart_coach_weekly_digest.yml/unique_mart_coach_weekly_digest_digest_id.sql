
    
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

select
    digest_id as unique_field,
    count(*) as n_records

from `tennis_dev`.`silver_gold`.`mart_coach_weekly_digest`
where digest_id is not null
group by digest_id
having count(*) > 1



  
  
      
    ) dbt_internal_test