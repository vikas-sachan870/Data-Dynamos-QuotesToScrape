create database assin;
use assin;

 select * from quote; 

-- 1.Find the number of quotes by each author.
SELECT 
    author,
    COUNT(*) AS number_of_quotes
FROM 
    quote
GROUP BY 
    author
ORDER BY 
    number_of_quotes DESC;
-- 2.List the top 5 most common tags.
SELECT 
  TRIM(SUBSTRING_INDEX(tags, ',', 1)) AS tag,
  COUNT(*) AS tag_count
FROM quotes
WHERE tags IS NOT NULL
GROUP BY tag
UNION ALL
SELECT 
  TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(tags, ',', 2), ',', -1)) AS tag,
  COUNT(*) AS tag_count
FROM quote
WHERE tags LIKE '%,%'  -- Only quotes with at least 2 tags
GROUP BY tag
ORDER BY tag_count DESC
LIMIT 5;
-- 3.Find authors who have more than 5 quotes.
SELECT 
    author,
    COUNT(*) AS quote_count
FROM 
    quote
GROUP BY 
    author
HAVING 
    COUNT(*) > 5
ORDER BY 
    quote_count DESC;
    
-- 4. Retrieve the longest quote and its author.-- 
SELECT 
    author,
    quote,
    LENGTH(quote) AS quote_length
FROM 
    quotes
ORDER BY 
    quote_length DESC
LIMIT 1;