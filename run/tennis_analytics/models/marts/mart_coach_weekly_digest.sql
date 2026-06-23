-- back compat for old kwarg name
  
  
  
  
  
  
      
          
          
      
  

    merge
    into
        `tennis_dev`.`silver_gold`.`mart_coach_weekly_digest` as DBT_INTERNAL_DEST
    using
        `mart_coach_weekly_digest__dbt_tmp` as DBT_INTERNAL_SOURCE
    on
        
              DBT_INTERNAL_SOURCE.`digest_id` <=> DBT_INTERNAL_DEST.`digest_id`
          
    when matched
        then update set
            *
    when not matched
        then insert
            *
