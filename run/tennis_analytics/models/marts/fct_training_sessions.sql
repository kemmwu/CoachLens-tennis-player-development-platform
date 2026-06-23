
  
    
        create or replace table `tennis_dev`.`silver_gold`.`fct_training_sessions`
      
      
    using delta
  
      
      
      
      
      
      
      
      
      as
      with sessions as (
    select * from `tennis_dev`.`silver_int`.`int_session_rollup_daily`
),

players as (
    select player_id, player_sk
    from `tennis_dev`.`silver_gold`.`dim_players`
    where is_current = true
),

final as (
    select
        -- Surrogate key
        md5(cast(concat(coalesce(cast(s.player_id as string), '_dbt_utils_surrogate_key_null_'), '-', coalesce(cast(s.session_date as string), '_dbt_utils_surrogate_key_null_')) as string))   
                                                        as session_sk,
        s.player_id,
        p.player_sk,
        s.session_date,
        s.session_week,
        s.session_month,
        s.session_year_month,
        s.sessions_on_day,
        s.total_shots_per_hour,

        -- Accuracy metrics
        s.avg_shots_in,
        s.avg_rallies_above_5_shots,
        s.max_longest_rally,

        -- Serve metrics
        s.avg_serves_in_ad,
        s.avg_serves_in_deuce,
        s.avg_serve_speed_ad,
        s.avg_serve_speed_deuce,

        -- Return metrics
        s.avg_returns_in_ad,
        s.avg_returns_in_deuce,

        -- Forehand metrics
        s.avg_forehand_cross_court_in,
        s.avg_forehand_down_the_line_in,
        s.avg_forehand_cross_court_speed,
        s.avg_forehand_down_the_line_speed,
        s.avg_forehand_cross_court_deep,
        s.avg_forehand_down_the_line_deep,

        -- Backhand metrics
        s.avg_backhand_cross_court_in,
        s.avg_backhand_down_the_line_in,
        s.avg_backhand_cross_court_speed,
        s.avg_backhand_down_the_line_speed,
        s.avg_backhand_cross_court_deep,
        s.avg_backhand_down_the_line_deep,

        s.avg_extraction_confidence

    from sessions s
    left join players p
        on s.player_id = p.player_id
)

select * from final
  