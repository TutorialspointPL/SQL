/* -----------------------------------------------------------------------------
    Utworzone na: SQL Server 2014
	Baza		: Hotels
    Tresc		: Pogrupuj hotele wg ilości gwiazdek i zlicz ile ich jest w 
				  każdej z grup. Wyniki posortuj malejaco wg liczby hoteli w danej grupie.
    Autor		: Forritarik dla TutorialsPointPL
	Data		: 2019.05.02 
----------------------------------------------------------------------------- */

SELECT
	CASE	
		WHEN hotel_stars = 1 THEN '1 gwiazdka'
		WHEN hotel_stars = 2 THEN '2 gwiazdki'
		WHEN hotel_stars = 3 THEN '3 gwiazdki'
		WHEN hotel_stars = 4 THEN '4 gwiazdki'
		WHEN hotel_stars = 5 THEN '5 gwiazdek'
	END AS Liczba_gwiazdek
	,COUNT(*) AS Liczba_hoteli

FROM
	hotels
		
GROUP by
	hotel_stars		
	
/* -----------------------------------------------------------------------------
Sposob dojścia do wyniku:
1.	Napisz proste zapytanie które wyświetli wszystkie hotele z bazy.
	Wystarczy że wyświetlisz kolumnę "hotel_stats" z tabeli "hotels".
2.	Pogrupuj hotele wg liczby gwiazdek.
3.	Zlicz liczbę hoteli w danej grupie i dodaj odpowiednie aliasy do kolumn.
4. 	Przesortuj wynik wg liczby hoteli malejąco.
----------------------------------------------------------------------------- */

	