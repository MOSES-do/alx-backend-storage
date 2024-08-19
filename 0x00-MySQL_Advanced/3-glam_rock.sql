-- Lists all bands with Glam rock as their main style, ranked by their longevity.
-- SELECT band_name, (IFNULL(split, YEAR(CURRENT_DATE())) - formed) AS lifespan
-- FIND_IN_SET function is used to check for a keyword within a comma-separated list of strings
--  in a given column, it returns 0 if not found and a num > 0 if found 
-- IFNULL searched column is NULL, IFNULL treats it as an empty string to avoid errors
-- IF FIND_IN_SET returns a value greater than 0, keyword was found
SELECT band_name, (IFNULL(split, '2020') - formed) AS lifespan
    FROM metal_bands
    WHERE FIND_IN_SET('Glam rock', IFNULL(style, "")) > 0
    ORDER BY lifespan DESC;
