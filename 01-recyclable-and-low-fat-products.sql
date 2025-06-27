LeetCode Problem: 1757. Recyclable and Low Fat Products
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/

-- Table: Products
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | product_id  | int     |
-- | low_fats    | enum('Y', 'N') |
-- | recyclable  | enum('Y', 'N') |
-- +-------------+---------+

-- product_id is the primary key (unique for each product)
-- low_fats = 'Y' means the product is low fat
-- recyclable = 'Y' means the product is recyclable

-- Objective:
-- Find product IDs that are both low fat and recyclable.

-- Example Input:
-- +-------------+----------+------------+
-- | product_id  | low_fats | recyclable |
-- +-------------+----------+------------+
-- | 0           | Y        | N          |
-- | 1           | Y        | Y          |
-- | 2           | N        | Y          |
-- | 3           | Y        | Y          |
-- | 4           | N        | N          |
-- +-------------+----------+------------+

-- Expected Output:
-- +-------------+
-- | product_id  |
-- +-------------+
-- | 1           |
-- | 3           |
-- +-------------+

-- MySQL Query:
SELECT product_id
FROM Products 
WHERE low_fats = 'Y' AND recyclable = 'Y';
