<?php 

	
	$hostLokalny="localhost";
	$uzytkownikLokalny="root";
	$hasloLokalne="haslo";
	$bazaDanychLokalna="sklep";

			$polaczenie = new mysqli( $hostLokalny, $uzytkownikLokalny , $hasloLokalne, $bazaDanychLokalna);
			if($polaczenie ->connect_errno)
			{
				echo "<br>Błąd połączenia z bazą danych<br>" ;
				exit();
			}
	?>