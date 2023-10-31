select j.j_date AS Date , j.j_open AS JNJ, u.u_open AS UNH, l.l_open AS LLY, h.h_open AS HCA,i.i_open AS LSRG
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
        '2021-04-15',
        '2021-04-14',
        '2021-04-13',
        '2021-04-12'  );
	