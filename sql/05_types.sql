CREATE TYPE census.series_id AS (
	survey_abbreviation  char(2),
	seasonal_code        char(1),
	item_code            char(6),
	demographics_code    char(4),
	characteristics_code char(2),
	process_code         char(1)
);

