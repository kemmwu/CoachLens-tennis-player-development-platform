
    
    

select
    alias as unique_field,
    count(*) as n_records

from `tennis_dev`.`silver_stg`.`stg_player_name_mapping`
where alias is not null
group by alias
having count(*) > 1


