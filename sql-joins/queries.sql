-- write your queries here
-- 1 --
SELECT * FROM owners o JOIN vehicles v ON o.id = v.owner_id;

-- 2 --
SELECT first_name,last_name,COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY (first_name,last_name) ORDER BY o.first_name;

-- 3 --
SELECT first_name,last_name,AVG(price),COUNT(owner_id) FROM owners o JOIN vehicles v ON o.id = v.owner_id GROUP BY (first_name, last_name) HAVING AVG(price) > 10000 AND COUNT(owner_id) > 1 ORDER BY first_name DESC;