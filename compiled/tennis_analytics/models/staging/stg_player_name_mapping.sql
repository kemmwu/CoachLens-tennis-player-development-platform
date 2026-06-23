with source as (
    select * from `tennis_dev`.`silver`.`player_name_mapping`
)

select
    trim(lower(alias))              as alias,
    trim(lower(canonical_player_id)) as canonical_player_id,
    alias_source,
    current_timestamp()             as created_at
from source