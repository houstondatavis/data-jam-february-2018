CREATE VIEW census.view_cat
AS
	SELECT c.category_code,
		c.category_text,
		s.subcategory_code,
		s.subcategory_text,
		c.sort_sequence AS csort,
		s.sort_sequence AS ssort
	FROM census.category AS c
	JOIN census.subcategory AS s
		USING (category_code);

CREATE VIEW census.view_alldata
AS
	SELECT (census.parse_series_id(series_id)).*, year, value, footnote_codes
	FROM census.alldata;
