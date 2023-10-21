
WITH Stock AS (
    SELECT
        jpm.j_date AS Date,
        REPLACE(jpm.j_close_last, '$', '')::numeric AS JPM,
        REPLACE(v.v_close_last, '$', '')::numeric AS VISA,
        REPLACE(pypl.k_date_last, '$', '')::numeric AS PYPL,
        REPLACE(pnc.pn_close_last, '$', '')::numeric AS PNC,
        REPLACE(axp.ax_close_last, '$', '')::numeric AS AXP
    FROM jpm_stock AS jpm
    JOIN v_stock AS v
	ON v.v_date = jpm.j_date
    JOIN pypl_stock AS pypl 
	ON pypl.k_date = jpm.j_date
    JOIN pnc_stock AS pnc
	ON pnc.pn_date = jpm.j_date
    JOIN axp AS axp
	ON axp.ax_date = jpm.j_date
    WHERE jpm.j_date IN (
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
    'JPM' AS Stock,
    100 * (MAX(JPM) / MIN(JPM )-1) AS PercentageChange
FROM Stock
UNION ALL
SELECT
    'VISA' AS Stock,
    100 * (MAX(VISA) / MIN(VISA) - 1) AS PercentageChange
FROM Stock
UNION ALL
SELECT
    'PYPL' AS Stock,
    100 * (MAX(PYPL) / MIN(PYPL) - 1) AS PercentageChange
FROM Stock
UNION ALL
SELECT
    'PNC' AS Stock,
    100 * (MAX(PNC) / MIN(PNC) - 1) AS PercentageChange
FROM Stock
UNION ALL
SELECT
    'AXP' AS Stock,
    100 * (MAX(AXP) / MIN(AXP) - 1) AS PercentageChange
FROM Stock;