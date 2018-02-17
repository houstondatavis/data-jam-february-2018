CREATE VIEW census.cat
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
