-- back compat for old kwarg name
  
  
  
  
  
  
      
          
          
      
  

    merge
    into
        `tennis_dev`.`silver_gold`.`mart_parent_monthly_report` as DBT_INTERNAL_DEST
    using
        `mart_parent_monthly_report__dbt_tmp` as DBT_INTERNAL_SOURCE
    on
        
              DBT_INTERNAL_SOURCE.`report_id` <=> DBT_INTERNAL_DEST.`report_id`
          
    when matched
        then update set
            *
    when not matched
        then insert
            *
