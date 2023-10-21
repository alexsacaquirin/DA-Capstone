Select jpm.j_date AS Date, jpm.j_close_last,v.v_close_last, pypl.k_date_last, pnc.pn_close_last, a.ax_close_last
from jpm_stock as jpm
JOIN v_stock as v
ON v_date = j_date
JOIN pypl_stock as pypl
ON k_date = j_date
JOIN pnc_stock as pnc
ON pn_date = j_date
JOIN axp as a
ON ax_date = j_date
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
);



