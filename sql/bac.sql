SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date = '2020-01-02'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  = '2020-05-01'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  ='2020-09-01'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  = '01/04/2021'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  = '05/03/2021'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date = '9/1/2021'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  = '1/3/2022'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  ='5/2/2022'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  = '9/1/2022'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  = '1/3/2023'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  = '5/1/2023'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date  = '9/1/2023'
UNION
SELECT ba_date, ba_close_last
FROM bac_stock
WHERE ba_date = '05/01/2020	';