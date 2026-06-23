
    
    

select
    match_id as unique_field,
    count(*) as n_records

from `tennis_dev`.`silver_gold`.`fct_match_performance`
where match_id is not null
group by match_id
having count(*) > 1


