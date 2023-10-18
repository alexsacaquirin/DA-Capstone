-- CREATE TABLE tsla_stock(
-- t_date DATE PRIMARY KEY,
-- t_close_last  character varying,
-- t_volume bigint,
-- t_open character varying,
-- t_high character varying,
-- t_low  character varying
-- );




-- COPY tsla_stock(t_date, t_close_last, t_volume, t_open, t_high, t_low)
-- FROM 'C:\Users\Sbap1\OneDrive\Desktop\Capstone\DA-Capstone\data\tsla.csv'
-- DELIMITER ','
-- CSV HEADER;



SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '2020-01-02'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '2020-05-01'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '2020-09-01'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '01/04/2021'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '05/03/2021'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '9/1/2021'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '1/3/2022'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '5/2/2022'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '9/1/2022'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '1/3/2023'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '5/1/2023'
UNION
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '9/1/2023'
;
SELECT t_date, t_close_last
FROM tsla_stock
WHERE t_date = '05/01/2020	';