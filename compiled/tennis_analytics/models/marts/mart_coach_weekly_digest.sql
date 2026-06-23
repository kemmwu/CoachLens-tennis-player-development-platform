

with scores as (
    select * from `tennis_dev`.`silver_gold`.`mart_player_development_score`
),


-- Only process weeks not already in the table
filtered_scores as (
    select * from scores
    where score_week > (select max(week_start) from `tennis_dev`.`silver_gold`.`mart_coach_weekly_digest`)
),


with_trend as (
    select
        player_id,
        player_sk,
        score_week,
        development_score,
        matches_played,
        matches_won,
        sessions_completed,
        avg_shots_per_hour,

        -- Score trend vs prior week
        lag(development_score) over (
            partition by player_id
            order by score_week
        )                                               as prior_week_score,

        development_score - lag(development_score) over (
            partition by player_id
            order by score_week
        )                                               as score_change

    from filtered_scores
),

final as (
    select
        md5(cast(concat(coalesce(cast(player_id as string), '_dbt_utils_surrogate_key_null_'), '-', coalesce(cast(score_week as string), '_dbt_utils_surrogate_key_null_')) as string))
                                                        as digest_id,
        player_id,
        player_sk,
        score_week                                      as week_start,
        development_score,
        prior_week_score,
        score_change,

        case
            when score_change > 2  then 'improving'
            when score_change < -2 then 'declining'
            else 'stable'
        end                                             as score_trend,

        matches_played,
        matches_won,
        sessions_completed,
        avg_shots_per_hour,
        current_timestamp()                             as calculated_at

    from with_trend
)

select * from final