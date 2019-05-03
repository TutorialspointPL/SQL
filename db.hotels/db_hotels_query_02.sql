/* -----------------------------------------------------------------------------
    Utworzone na: SQL Server 2014
	Baza		: Hotels
    Tresc		: Wyświetl listę hoteli które mają 3 lub 4 gwiazdki. 
				  Wyniki ogranicz do kolumn: kraj, miasto, nazwa, adres i liczba gwiazdek.
				  Nadaj tabelom i kolumnom odpowiednie aliasy. Całość posortuj wg kraju i miasta.
    Autor		: Forritarik dla TutorialsPointPL
	Data		: 2019.05.03 
----------------------------------------------------------------------------- */

SELECT
	 Co.country_name AS [Nazwa kraju]
	,Ci.city_name AS [Nazwa miasta]
	,H.hotel_name AS [Nazwa hotelu]
	,H.hotel_address AS [Adres hotelu]
	,H.hotel_stars AS [Liczba gwiazdek]
FROM
	Hotels H
	JOIN Countries Co ON H.hotel_country_id = Co.country_id
	JOIN Cities Ci ON H.hotel_city_id = Ci.city_id
WHERE
	H.hotel_stars IN (3,4)
ORDER BY
	1,2
	
	
/* -----------------------------------------------------------------------------
Sposob dojścia do wyniku:
1.	Napisz zapytanie które wyświetli wszystkie hotele z bazy Hotels. 
	Nadaj tabeli odpowiedni alias.
	Wyniki ogranicz do kolumn: kraj, miasto, nazwa, adres i liczba gwiazdek.
2.	Dołącz tabelę Kraje w celu wyświetlenia nazwy kraju zamiast jego identyfikatora.
	Nadaj tabeli odpowiedni alias.
2.	Dołącz tabelę Miasta w celu wyświetlenia nazwy miasta zamiast jego identyfikatora.
	Nadaj tabeli odpowiedni alias.
3.	Przefiltruj listę hoteli tylko do tych które mają 3 lub 4 gwiazdki.
4.	Nadaj wszystkim kolumnom odpowiednie aliasy.
4.	Wyniki posortuj wg: kraju i miasta rosnąco.
----------------------------------------------------------------------------- */

	