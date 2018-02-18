-- regexp_matches('CXUALCBEVGLB0101M'::text, '^(.{2})(.)(.*?)(.{4})(.{2})(.)$');
CREATE FUNCTION census.parse_series_id(series_id text)
RETURNS census.series_id AS $$
	SELECT (a[1],a[2],a[3],a[4],a[5],a[6])::census.series_id
	FROM regexp_matches(series_id, '^(.{2})(.)(.{4,})(.{4})(.{2})(.)$')
		AS t(a);
$$ LANGUAGE sql
IMMUTABLE;
