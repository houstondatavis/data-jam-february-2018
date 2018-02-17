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

CREATE VIEW census.view_alldata_simple
AS
	SELECT (census.parse_series_id(series_id)).*, year, value, footnote_codes
	FROM census.alldata;

CREATE VIEW census.view_alldata_expanded
AS
	SELECT cad.year, cad.value, ci.item_text, cd.demographics_text, cc.characteristics_text
	FROM census.alldata AS cad
	JOIN census.item AS ci
		ON (census.parse_series_id(series_id)).item_code = ci.item_code
	JOIN census.demographics AS cd
		ON (census.parse_series_id(series_id)).demographics_code = cd.demographics_code
	JOIN census.characteristics AS cc
		 ON (census.parse_series_id(series_id)).characteristics_code = cc.characteristics_code;
