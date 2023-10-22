select j.j_date AS Date , j.j_close_last AS JNJ, u.u_close_last AS UNH, l.l_close_last AS LLY, h.h_close_last AS HCA,i.i_close_last AS LSRG
from jnj_stock as j
JOIN unh_stock as u
ON u.u_date = j.j_date
JOIN lly_stock as l
ON l.l_date = j.j_date
JOIN hca_stock as h
ON h.h_date = j.j_date
JOIN isrg_stock as i
ON i.i_date = j.j_date
WHERE j.j_date IN (
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
	