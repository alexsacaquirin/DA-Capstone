    SELECT n.n_date AS DATE , n.n_open AS NVDA , m.m_open AS MSFT, a.a_open AS APPLE , g.a_open AS GOOGLE , fb.m_open AS META
    FROM nvda_stock AS n
    JOIN msft_stock AS m
	ON m.m_date = n.n_date
    JOIN apple_stock AS a 
	ON a.a_date = n.n_date
    JOIN google_stock AS g
	ON g.m_date = n.n_date
    JOIN meta_stock AS fb
	ON fb.m_date = n.n_date
    WHERE n.n_date IN (
          '2021-04-15',
        '2021-04-14',
        '2021-04-13',
        '2021-04-12'
    )

	