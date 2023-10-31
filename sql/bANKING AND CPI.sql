  SELECT
  jpm.j_date AS Date , v.v_open AS VISA , pypl.k_open AS PYPL , pnc.pn_open AS PNC , axp.ax_open AS AXP
 FROM jpm_stock as jpm
    JOIN v_stock AS v
	ON v.v_date = jpm.j_date
    JOIN pypl_stock AS pypl 
	ON pypl.k_date = jpm.j_date
    JOIN pnc_stock AS pnc
	ON pnc.pn_date = jpm.j_date
    JOIN axp AS axp
	ON axp.ax_date = jpm.j_date
    WHERE jpm.j_date IN (
   '2021-04-15',
        '2021-04-14',
        '2021-04-13',
        '2021-04-12'
    )
