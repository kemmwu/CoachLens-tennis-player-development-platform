
    
    

select
    session_id as unique_field,
    count(*) as n_records

from `tennis_dev`.`silver_stg`.`stg_training_sessions`
where session_id is not null
group by session_id
having count(*) > 1


