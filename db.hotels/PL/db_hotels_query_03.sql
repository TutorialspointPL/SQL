/* -----------------------------------------------------------------------------
    Utworzone na: SQL Server 2014
	Baza		: Hotels
    Tresc		: Wyświetl listę hoteli posortowana wg liczby rezerwacji (niezależnie od daty) malejąco. 
    Autor		: Forritarik dla TutorialsPointPL
	Data		: 2019.05.03 
----------------------------------------------------------------------------- */

SELECT
	  H.hotel_name
	 ,COUNT(*) AS [Liczba rezerwacji]
FROM	
	Hotels H
	JOIN Rooms Ro ON H.hotel_id = Ro.room_hotel_id
	JOIN Reservations Re ON Ro.room_id = Re.reservation_room_id
GROUP BY
	H.hotel_name
ORDER BY
	[Liczba rezerwacji] DESC
	
/* -----------------------------------------------------------------------------
Sposob dojścia do wyniku:
1.	Napisz zapytanie wyświetlające wszystkie hotele. 
	Wyniki ogranicz do kolumny: nazwa hotelu. Nadaj alias.
2.	Dołącz tabelę "pokoje" po odpowiednich kluczach. Dodaj kolumnę z identyfikatorem pokoju.
3.	Dołącz tabelę "rezerwacje" po odpowiednich kluczach. Dodaj kolumnę z identyfikatorem rezerwacji.
4.	Pogrupuj i zlicz rezerwacje wg hoteli. Dodaj kolumnę z liczbą rezerwacji (do grupowania usuń kolumny z ID pokoju i rezerwacji).
5.	Posortuj wyniki po liczbie rezerwacji.
----------------------------------------------------------------------------- */

	