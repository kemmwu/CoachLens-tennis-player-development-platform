
    
    

select
    session_sk as unique_field,
    count(*) as n_records

from `tennis_dev`.`silver_gold`.`fct_training_sessions`
where session_sk is not null
group by session_sk
having count(*) > 1


