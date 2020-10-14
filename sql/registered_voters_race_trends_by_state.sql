SELECT state_name as state
,AVG(white_perc)
,AVG(black_perc)
,AVG(asia_perc)
,AVG(native_american_perc)
,AVG(native_hawaiian_perc)
,AVG(hispanic_perc)
,AVG(white_non_hispanic_perc)
,AVG(multi_race_perc)
,registered_per_total
FROM registered_voters_race_hispanic_origin r
LEFT JOIN registered_voters as v
ON v.state = r.state_name
GROUP BY state_name;