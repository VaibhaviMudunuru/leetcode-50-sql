-- LeetCode Problem: 584. Find Customer Referee
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/find-customer-referee/

-- Table: Customer
-- +-------------+---------+
-- | Column Name | Type    |
-- +-------------+---------+
-- | id          | int     |
-- | name        | varchar |
-- | referee_id  | int     |
-- +-------------+---------+
-- id is the primary key.
-- Each customer may have been referred by another customer (referee_id).

-- Objective:
-- Find the names of customers who are **not referred** by the customer with id = 2.
-- If referee_id is NULL, that also counts as not being referred by customer 2.

-- Example Input:
-- +----+------+------------+
-- | id | name | referee_id |
-- +----+------+------------+
-- | 1  | Will | null       |
-- | 2  | Jane | null       |
-- | 3  | Alex | 2          |
-- | 4  | Bill | null       |
-- | 5  | Zack | 1          |
-- | 6  | Mark | 2          |
-- +----+------+------------+

-- Expected Output:
-- +------+
-- | name |
-- +------+
-- | Will |
-- | Jane |
-- | Bill |
-- | Zack |
-- +------+

-- MySQL Query:
SELECT name 
FROM Customer 
WHERE referee_id IS NULL 
   OR referee_id <> 2;
