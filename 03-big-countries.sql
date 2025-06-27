-- LeetCode Problem: 595. Big Countries
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/big-countries/

-- Table: World
-- +-------------+-----------+---------+------------+--------------+
-- | name        | continent | area    | population | gdp          |
-- +-------------+-----------+---------+------------+--------------+
-- name is the primary key for this table.

-- A country is considered "big" if:
--   - It has an area of at least 3 million km² (3000000), OR
--   - It has a population of at least 25 million (25000000)

-- Objective:
-- Find the name, population, and area of the big countries.

-- Example Input:
-- +-------------+-----------+---------+------------+--------------+
-- | name        | continent | area    | population | gdp          |
-- +-------------+-----------+---------+------------+--------------+
-- | Afghanistan | Asia      | 652230  | 25500100   | 20343000000  |
-- | Albania     | Europe    | 28748   | 2831741    | 12960000000  |
-- | Algeria     | Africa    | 2381741 | 37100000   | 188681000000 |
-- | Andorra     | Europe    | 468     | 78115      | 3712000000   |
-- | Angola      | Africa    | 1246700 | 20609294   | 100990000000 |
-- +-------------+-----------+---------+------------+--------------+

-- Expected Output:
-- +-------------+------------+---------+
-- | name        | population | area    |
-- +-------------+------------+---------+
-- | Afghanistan | 25500100   | 652230  |
-- | Algeria     | 37100000   | 2381741 |
-- +-------------+------------+---------+

-- MySQL Query:
SELECT name, population, area 
FROM World 
WHERE area >= 3000000 
   OR population >= 25000000;
