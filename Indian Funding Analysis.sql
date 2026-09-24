
CREATE TABLE StartupFunding (
    name VARCHAR(255),
    website VARCHAR(255),
    industry VARCHAR(1000),
    country VARCHAR(100),
    funding_amount DECIMAL(18,2),
    funding_type VARCHAR(100),
    last_funding_date DATE,
    funding_year INT,
    funding_month INT,
    funding_month_name VARCHAR(20),
    funding_quarter INT,
    industry_count INT
);

/* 1. How many startups are in the dataset? */

SELECT 
    COUNT(*) AS total_startups
FROM StartupFunding;

/* 2. What is the total funding raised? */

SELECT 
    '₹' || TO_CHAR(
        SUM(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS total_funding_inr
FROM StartupFunding;

/* 3. What is the average funding amount per startup? */

SELECT 
    '₹' || TO_CHAR(
        AVG(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS average_funding_inr
FROM StartupFunding;


/* 4. What are the minimum and maximum funding amounts? */

SELECT 
    '₹' || TO_CHAR(
        MIN(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS minimum_funding_inr,
	
    '₹' || TO_CHAR(
        MAX(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS maximum_funding_inr

FROM StartupFunding;


/* 5. What are the different funding types? */

-- 5. What are the different funding types?

SELECT
    funding_type,
    COUNT(*) AS startup_count,
    '₹' || TO_CHAR(
        SUM(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS total_funding_inr
FROM StartupFunding
GROUP BY funding_type
ORDER BY SUM(funding_amount) DESC;

/* 6. Which startups have raised the most funding? */

SELECT 
    name,

    '₹' || TO_CHAR(
        funding_amount,
        'FM99,99,99,99,99,990.00'
    ) AS funding_amount_inr,

    funding_type,
    industry,
    country

FROM StartupFunding

ORDER BY funding_amount DESC

LIMIT 10;


/* 7. Which startups have raised less than the average funding? */

SELECT 
    name,

    '₹' || TO_CHAR(
        funding_amount,
        'FM99,99,99,99,99,990.00'
    ) AS funding_amount_inr,

    funding_type

FROM StartupFunding

WHERE funding_amount < (
    SELECT AVG(funding_amount)
    FROM StartupFunding
)

ORDER BY funding_amount DESC;


/* 8. What is the total funding by funding type? */

SELECT 
    funding_type,

    '₹' || TO_CHAR(
        SUM(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS total_funding_inr

FROM StartupFunding

GROUP BY funding_type

ORDER BY SUM(funding_amount) DESC;


/* 9. What is the average funding by funding type? */

SELECT 
    funding_type,
    COUNT(*) AS startups,

    '₹' || TO_CHAR(
        AVG(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS average_funding_inr

FROM StartupFunding

GROUP BY funding_type

ORDER BY AVG(funding_amount) DESC;


/* 10. Which funding type has the highest number of startups? */

SELECT 
    funding_type,
    COUNT(*) AS startup_count

FROM StartupFunding

GROUP BY funding_type

ORDER BY COUNT(*) DESC

LIMIT 1;

/* 11. Which industries have the most startups? */

SELECT 
    industry,
    COUNT(*) AS startup_count

FROM StartupFunding

GROUP BY industry

ORDER BY COUNT(*) DESC;


/* 12. Which startups belong to the largest industry groups? */

SELECT 
    name,
    industry,
    industry_count,

    '₹' || TO_CHAR(
        funding_amount,
        'FM99,99,99,99,99,990.00'
    ) AS funding_amount_inr

FROM StartupFunding

ORDER BY industry_count DESC;


/* 13. What is the average number of industries
       associated with a startup? */

SELECT 
    ROUND(
        AVG(industry_count::NUMERIC),
        2
    ) AS avg_industries_per_startup

FROM StartupFunding;


/* 14. Which startups operate across 5 or more industries? */

SELECT 
    name,
    industry,
    industry_count,

    '₹' || TO_CHAR(
        funding_amount,
        'FM99,99,99,99,99,990.00'
    ) AS funding_amount_inr

FROM StartupFunding

WHERE industry_count >= 5

ORDER BY 
    industry_count DESC,
    funding_amount DESC;


/* 15. Which multi-industry startups have raised the most funding? */

SELECT 
    name,
    industry_count,

    '₹' || TO_CHAR(
        funding_amount,
        'FM99,99,99,99,99,990.00'
    ) AS funding_amount_inr,

    funding_type

FROM StartupFunding

WHERE industry_count > 1

ORDER BY funding_amount DESC

LIMIT 10;


/* 16. How many startups are there by country? */

SELECT 
    country,
    COUNT(*) AS startup_count

FROM StartupFunding

GROUP BY country

ORDER BY COUNT(*) DESC;

/* 17. Which countries have raised the most total funding? */

SELECT 
    country,
    COUNT(*) AS startup_count,

    '₹' || TO_CHAR(
        SUM(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS total_funding_inr

FROM StartupFunding

GROUP BY country

ORDER BY SUM(funding_amount) DESC;

/* 18. Which countries have the highest average funding per startup? */

SELECT 
    country,
    COUNT(*) AS startup_count,

    '₹' || TO_CHAR(
        AVG(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS average_funding_inr

FROM StartupFunding

GROUP BY country

HAVING COUNT(*) >= 2

ORDER BY AVG(funding_amount) DESC;

/* 19. Which country has the highest-funded startup? */

SELECT 
    country,
    name,

    '₹' || TO_CHAR(
        funding_amount,
        'FM99,99,99,99,99,990.00'
    ) AS funding_amount_inr,

    funding_type

FROM StartupFunding

ORDER BY funding_amount DESC

LIMIT 1;

/* 20. What percentage of total funding comes from each country? */

SELECT 
    country,

    '₹' || TO_CHAR(
        SUM(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS country_funding_inr,

    ROUND(
        SUM(funding_amount) * 100.0 /
        SUM(SUM(funding_amount)) OVER (),
        2
    ) AS funding_percentage

FROM StartupFunding

GROUP BY country

ORDER BY SUM(funding_amount) DESC;

/* 21. How many startups received funding each year? */

SELECT 
    funding_year,
    COUNT(*) AS startup_count

FROM StartupFunding

GROUP BY funding_year

ORDER BY funding_year;

/* 22. How much funding was raised each year? */

SELECT 
    funding_year,

    '₹' || TO_CHAR(
        SUM(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS total_funding_inr

FROM StartupFunding

GROUP BY funding_year

ORDER BY funding_year;

/* 23. What is the average funding by year? */

SELECT 
    funding_year,

    '₹' || TO_CHAR(
        AVG(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS average_funding_inr

FROM StartupFunding

GROUP BY funding_year

ORDER BY funding_year;

/* 24. Which months have the highest funding activity? */

SELECT 
    funding_month,
    funding_month_name,
    COUNT(*) AS startup_count,

    '₹' || TO_CHAR(
        SUM(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS total_funding_inr

FROM StartupFunding

GROUP BY 
    funding_month,
    funding_month_name

ORDER BY SUM(funding_amount) DESC;

/* 25. Which quarter received the most funding? */

SELECT 
    funding_quarter,
    COUNT(*) AS startup_count,

    '₹' || TO_CHAR(
        SUM(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS total_funding_inr

FROM StartupFunding

GROUP BY funding_quarter

ORDER BY SUM(funding_amount) DESC;

/* 26. What is the monthly funding trend? */

SELECT 
    funding_year,
    funding_month,
    funding_month_name,
    COUNT(*) AS startup_count,

    '₹' || TO_CHAR(
        SUM(funding_amount),
        'FM99,99,99,99,99,990.00'
    ) AS total_funding_inr

FROM StartupFunding

GROUP BY 
    funding_year,
    funding_month,
    funding_month_name

ORDER BY 
    funding_year,
    funding_month;

/* 27. What percentage of startups received more than ₹1 Crore? */

SELECT 

    ROUND(
        COUNT(*) FILTER (
            WHERE funding_amount > 10000000
        ) * 100.0 / COUNT(*),
        2
    ) AS percentage_over_1_crore

FROM StartupFunding;

/* 28. Which startups received funding above their funding-type average? */

SELECT 
    s.name,
    s.funding_type,

    '₹' || TO_CHAR(
        s.funding_amount,
        'FM99,99,99,99,99,990.00'
    ) AS funding_amount_inr

FROM StartupFunding s

WHERE s.funding_amount > (

    SELECT AVG(s2.funding_amount)

    FROM StartupFunding s2

    WHERE s2.funding_type = s.funding_type
)

ORDER BY s.funding_amount DESC;

/* 29. Rank startups by funding within each country */

SELECT 
    name,
    country,

    '₹' || TO_CHAR(
        funding_amount,
        'FM99,99,99,99,99,990.00'
    ) AS funding_amount_inr,

    funding_type,

    RANK() OVER (
        PARTITION BY country
        ORDER BY funding_amount DESC
    ) AS country_funding_rank

FROM StartupFunding

ORDER BY 
    country,
    country_funding_rank;

/* 30. What are the top 10 startups contributing to total funding? */

WITH RankedStartups AS
(
    SELECT 
        name,
        funding_amount,
        funding_type,
        country,

        SUM(funding_amount) OVER () AS total_funding

    FROM StartupFunding
)

SELECT 
    name,

    '₹' || TO_CHAR(
        funding_amount,
        'FM99,99,99,99,99,990.00'
    ) AS funding_amount_inr,

    funding_type,
    country,

    ROUND(
        funding_amount * 100.0 / total_funding,
        2
    ) AS contribution_percentage

FROM RankedStartups

ORDER BY funding_amount DESC

LIMIT 10;