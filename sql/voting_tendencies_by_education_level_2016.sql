SELECT state_name as state
,AVG(bachelors_degree_or_more_perc) as bachelor_or_higher_perc
,registered_per_total as percentage_registered
,AVG(Dem) as democrats
,AVG(GOP) as republicans
FROM registered_voters_education e
LEFT JOIN registered_voters as v
ON v.state = e.state_name
LEFT JOIN electoral_vote_2016_pres_polls pp 
ON e.state_name = pp.State
GROUP BY state_name;