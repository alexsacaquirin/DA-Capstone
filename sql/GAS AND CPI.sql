select c.c_date AS Date , c.c_open AS COP , cv.c_open AS CVX , e.e_open AS EXXON , s.s_open AS SHELL, h.h_open AS HESS
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
        '2021-04-15',
        '2021-04-14',
        '2021-04-13',
        '2021-04-12'
       );
	