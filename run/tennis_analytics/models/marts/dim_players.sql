
  
    
        create or replace table `tennis_dev`.`silver_gold`.`dim_players`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      with students as (
    select * from `tennis_dev`.`silver_stg`.`stg_students`
),

final as (
    select
        -- Surrogate key
        md5(cast(concat(coalesce(cast(student_id as string), '_dbt_utils_surrogate_key_null_'), '-', coalesce(cast(valid_from as string), '_dbt_utils_surrogate_key_null_')) as string))
                                                        as player_sk,
        student_id                                      as player_id,
        preferred_name,
        full_name,
        chinese_name,
        date_of_birth,
        utr_rating,
        age_group,
        dominant_hand,
        competition_level,
        goals,
        coach_id,
        contact_email,
        submitted_at,
        valid_from,
        valid_to,
        is_current
    from students
)

select * from final
  