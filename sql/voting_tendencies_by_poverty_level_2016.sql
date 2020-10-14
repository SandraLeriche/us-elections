SELECT state_name as state
,AVG(below_poverty_perc) as below_poverty_percentage
,registered_per_total as percentage_registered
,AVG(Dem) as democrats
,AVG(GOP) as republicans
FROM registered_voters_sex_and_poverty sp
LEFT JOIN registered_voters as v
ON v.state = sp.state_name
LEFT JOIN electoral_vote_2016_pres_polls pp 
ON sp.state_name = pp.State
GROUP BY state_name;