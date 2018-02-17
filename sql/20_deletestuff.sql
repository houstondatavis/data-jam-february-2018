ALTER TABLE census.characteristics
	DROP COLUMN selectable;
ALTER TABLE census.demographics
	DROP COLUMN display_level, 
	DROP COLUMN selectable;
ALTER TABLE census.subcategory
	DROP COLUMN display_level, 
	DROP COLUMN selectable;
ALTER TABLE census.category
	DROP COLUMN display_level, 
	DROP COLUMN selectable;
ALTER TABLE census.alldata
	DROP COLUMN period;
ALTER TABLE census.series
	DROP COLUMN begin_period, 
	DROP COLUMN end_period, 
	DROP COLUMN process_code, 
	DROP COLUMN footnote_codes, 
	DROP COLUMN seasonal;
