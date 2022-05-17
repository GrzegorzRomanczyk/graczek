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
                <a class="menu " href="index.php">Strona główna</a><a class="menu" href="baza.php">Baza gier</a><a class="menu" href="kontakt.php">Kontakt</a><a class="menu " href="regulamin.php">Regulamin</a>
            </nav>
            
            <section >
                
						
						<div id = "logoGry">
						<?php
								$id =  $_GET['id'];
								
								$zapytanie = "SELECT * FROM  gry WHERE id = $id";
						if($wynik=$polaczenie -> query($zapytanie))
						{
							if($wynik -> num_rows >0)
							{
								while($wiersz = $wynik ->fetch_assoc())
								{
								
									?>
									<img class="duzyObraz" src="<?php echo $wiersz["tapeta"]?>" alt="duzy obraz"/>
									</div>
								<div id = "nazwaGry">
						
									<h1 class ="naglowekGry"><?php echo $wiersz["nazwa"]?> </h1>
							
						</div>
						<div id = "opisGry">
						<h1 class ="naglowekGry"><?php echo $wiersz["cena"]?> PLN </h1>
									<p><?php echo $wiersz["opis"]?> <br></p>
										
						</div>
									<?php
								}
							}
						}
						?>
						
                
            </section>
            
            <footer>
                Strona internetowa będąca dodatkiem do pracy inżynierskiej. Nie jest to prawadziwy sklep, w którym mogą Państwo nabyć produkty
            </footer>
            
        </div>
             <?php 
						$polaczenie  ->close();
				?>
        
    </body>
</html>