select n.n_date AS DATE , n.n_close_last , v.v_close_last , l.l_close_last , h.h_close_last
from nvda_stock as n
JOIN v_stock as v
ON v.v_date = n.n_date
JOIN lly_stock as l
ON l.l_date = n.n_date
JOIN hess_stock as h
ON h.h_date = n.n_date
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