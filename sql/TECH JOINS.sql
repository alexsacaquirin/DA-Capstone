select  n.n_date AS Date, n.n_close_last,m.m_close_last, a.a_close_last, g.a_close_last, fb.m_close_last
from nvda_stock as n
JOIN msft_stock as m
ON m.m_date = n.n_date
JOIN apple_stock as a
ON a.a_date = n.n_date
JOIN google_stock as g
ON g.m_date = n.n_date
JOIN meta_stock as fb
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
);
