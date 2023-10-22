select c.c_date AS Date , c.c_close_last AS COP , cv.c_close_last AS CVX , e.e_close_last AS EXXON , s.s_close_last AS SHELL, h.h_close_last AS HESS
from cop_stock as c
JOIN cvx_stock as cv
ON cv.c_date = c.c_date
JOIN exxon_stock as e
ON e.e_date = c.c_date
JOIN shell_stock as s
ON s.s_date = c.c_date
JOIN hess_stock as h 
ON h.h_date = c.c_date
WHERE c.c_date IN (
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
        '2023-12-01'   );
	
