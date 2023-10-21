WITH Stock AS (
    SELECT
        n.n_date AS Date,
        REPLACE(n.n_close_last, '$', '')::numeric AS Nvda,
        REPLACE(m.m_close_last, '$', '')::numeric AS Msft,
        REPLACE(a.a_close_last, '$', '')::numeric AS Apple,
        REPLACE(g.a_close_last, '$', '')::numeric AS Google,
        REPLACE(fb.m_close_last, '$', '')::numeric AS Meta
    FROM nvda_stock AS n
    JOIN msft_stock AS m
	ON m.m_date = n.n_date
    JOIN apple_stock AS a 
	ON a.a_date = n.n_date
    JOIN google_stock AS g
	ON g.m_date = n.n_date
    JOIN meta_stock AS fb
	ON fb.m_date = n.n_date
    WHERE n.n_date IN (
        '2019-03-01',
        '2019-06-01',
        '2019-09-01',
        '2019-12-01',
        '2020-01-01',
        '2020-03-01',
        '2020-06-01',
        '2020-09-01',
        '2020-12-01',
        '2021-01-01',
        '2021-03-01',
        '2021-06-01',
        '2021-09-01',
        '2021-12-01',
        '2022-01-01',
        '2022-03-01',
        '2022-06-01',
        '2022-09-01',
        '2022-12-01',
        '2023-01-01',
        '2023-03-01',
        '2023-06-01',
        '2023-09-01',
        '2023-12-01'
    )
)
SELECT
    'Nvda' AS Stock,
    100 * (MAX(Nvda) / MIN(Nvda) - 1) AS PercentageChange
FROM Stock
UNION ALL
SELECT
    'Msft' AS Stock,
    100 * (MAX(Msft) / MIN(Msft) - 1) AS PercentageChange
FROM Stock
UNION ALL
SELECT
    'Apple' AS Stock,
    100 * (MAX(Apple) / MIN(Apple) - 1) AS PercentageChange
FROM Stock
UNION ALL
SELECT
    'Google' AS Stock,
    100 * (MAX(Google) / MIN(Google) - 1) AS PercentageChange
FROM Stock
UNION ALL
SELECT
    'Meta' AS Stock,
    100 * (MAX(Meta) / MIN(Meta) - 1) AS PercentageChange
FROM Stock;
	
	
	
	
	
	