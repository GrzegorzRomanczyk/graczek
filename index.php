<!DOCTYPE html>
<html lang="pl">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Strona internetowa</title>
        <link rel="stylesheet" href="wyglad.css">
    </head>
    
    <body> 
	<?php 
	include("db.php");
	?>
        <div id="kontener">
            <header>
                <img src="baner1.jpg"alt="baner - header"/>
            </header>
            
            <nav>
                <a class="menu aktywne" href="index.php">Strona główna</a><a class="menu" href="baza.php">Baza gier</a><a class="menu" href="kontakt.php">Kontakt</a><a class="menu" href="regulamin.php">Regulamin</a>
            </nav>
            
            <section>
                
                <article>
                    <h1>Newsy</h1>
							
					<?php 
						$zapytanie = "SELECT * FROM newsy  ORDER BY id  DESC";
						if($wynik=$polaczenie -> query($zapytanie))
						{
							if($wynik -> num_rows >0)
							{
								while($wiersz = $wynik ->fetch_assoc())
								{
									
									?>
									<p><img class="miniatura" src="<?php echo $wiersz["logo"] ?>" alt="miniatura"/> <?php echo$wiersz["tytul"]?><br/> <?php echo $wiersz["opis"] ?> <br><br><br></p>
									
								<?php
								}
							}
						}
					?>
              
                   
                    
                    <h2></h2>
                </article>
                
            </section>
            <?php 
						$polaczenie  ->close();
				?>
            <footer>
                Strona internetowa będąca dodatkiem do pracy inżynierskiej. Nie jest to prawadziwy sklep, w którym mogą Państwo nabyć produkty
            </footer>
            
        </div>
        
        
    </body>
</html>