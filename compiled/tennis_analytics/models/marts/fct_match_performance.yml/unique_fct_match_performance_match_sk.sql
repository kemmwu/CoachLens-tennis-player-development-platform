
    
    

select
    match_sk as unique_field,
    count(*) as n_records

from `tennis_dev`.`silver_gold`.`fct_match_performance`
where match_sk is not null
group by match_sk
having count(*) > 1


