SELECT state_name as state
,AVG(less_9_grade_perc)
,AVG(high_school_perc)
,AVG(college_no_degree_perc)
,AVG(associate_degree_perc)
,AVG(bachelors_degree_perc)
,AVG(graduate_degree_perc)
,AVG(high_school_or_more_perc)
,AVG(bachelors_degree_or_more_perc)
,registered_per_total
FROM registered_voters_education e
LEFT JOIN registered_voters as v
ON v.state = e.state_name
GROUP BY state_name;