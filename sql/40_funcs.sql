CREATE FUNCTION census.parse_series_id(series_id text)
RETURNS census.series_id AS $$
	SELECT
		(
			substring(series_id FROM 1 FOR 2), -- AS survey_abbreviation,
			substring(series_id FROM 3 FOR 1), -- AS seasonal,
			substring(series_id FROM 4 FOR 6), -- AS item_code,
			substring(series_id FROM 10 FOR 4), -- AS demographics_code,
			substring(series_id FROM 14 FOR 2), -- AS characteristics_code,
			substring(series_id FROM 16 FOR 1 ) -- AS process_code
		)::census.series_id
	FROM ( VALUES (series_id) ) AS t(series_id)
$$ LANGUAGE sql;
