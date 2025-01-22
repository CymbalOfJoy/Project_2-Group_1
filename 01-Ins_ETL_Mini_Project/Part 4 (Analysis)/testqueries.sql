#1
SELECT
    c.outcome,
    SUM(c.pledged) AS total_pledged,
    AVG(c.goal) AS avg_goal
FROM
    Campaign c
GROUP BY
    c.outcome
ORDER BY
    total_pledged DESC;

#2
SELECT
    c.country,
    COUNT(c.cf_id) AS num_campaigns
FROM
    Campaign c
GROUP BY
    c.country
ORDER BY
    num_campaigns DESC;

#3
SELECT
    c.currency,
    AVG(c.backers_count) AS avg_backers,
    SUM(c.backers_count) AS total_backers
FROM
    Campaign c
GROUP BY
    c.currency
ORDER BY
    total_backers ASC;

#4
SELECT
    cat.category,
    MAX(c.goal) AS highest_goal,
    MIN(c.goal) AS lowest_goal
FROM
    Category cat
JOIN
    Campaign c ON cat.category_id = c.category_id
GROUP BY
    cat.category
ORDER BY
    highest_goal DESC;