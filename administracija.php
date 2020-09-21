<?php
include 'sesija.php';
include 'konekcija.php';
include 'baza/komentar.php';
 ?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>PARADISE TOURS</title>

	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700%7CVarela+Round" rel="stylesheet">

	<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

	<link type="text/css" rel="stylesheet" href="css/owl.carousel.css" />
	<link type="text/css" rel="stylesheet" href="css/owl.theme.default.css" />
	<link type="text/css" rel="stylesheet" href="css/magnific-popup.css" />
	<link rel="stylesheet" href="css/font-awesome.min.css">

	<link type="text/css" rel="stylesheet" href="css/style.css" />
	<link type="text/css" rel="stylesheet" href="//cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css" />

</head>

<body>
    <?php
      include 'header.php';
   ?>

	
    <div id="service" class="section md-padding">

        <div class="container">
            <div class="section-header text-center">
                    <h2 class="title">Putovanja</h2>
                    <h4 id="rez"></h4>
            </div>
            <div id="putovanja" class="row">


            </div>

        </div>

    </div>

    <div id="service" class="section md-padding">

        <div class="container">
            <div class="section-header text-center">
            <h2 class="title">Dodaj novo putovanje</h2>
            </div>
            <form method="post" action="metode.php">
                <input type="hidden" id="id" name="id" value="" class="form-control">
                <input type="hidden" id="operacija" name="operacija" value="sacuvaj" class="form-control">
                <label for="naziv">Naziv</label>
                <input type="text" id="naziv" name="naziv" placeholder="Naziv putovanja" class="form-control">
                <label for="opis">Opis</label>
                <input type="text" id="opis" name="opis" placeholder="Opis putovanja" class="form-control">
                <label for="cena">Cena</label>
                <input type="number" id="cena" name="cena" placeholder="Cena putovanja" class="form-control">
                <br>
                <label for="putovanje"></label>
                <input type="submit" id="putovanje" name="putovanje" value="Sacuvaj" class="btn btn-primary">
            </form>

        </div>

    </div>

    <div id="service" class="section md-padding">

		<div class="container">
      		<div class="section-header text-center">
        		<h2 class="title">Komentari</h2>
				<h4 id="rez"></h4>
      </div>
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Slika</th>
						<th>Ime</th>
						<th>Text</th>
					</tr>
				</thead>
				<tbody>
					<?php
							//$podaci = Komentar::getAll($konekcija);
              		$curl = curl_init("http://localhost/iteh-seminarski-master/api/komentari");
        			curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
        			$jsonOdgovor = curl_exec($curl);
             		$podaci = json_decode($jsonOdgovor);
					foreach ($podaci as $p ) {

					?>
								<tr>
									<td><img src="slike/<?php echo $p->slika ?>" class="img img-responsive" alt=""></td>
									<td><?php echo $p->ime ?></td>
									<td><?php echo $p->text ?></td>
								</tr>

								<?php
							}
					 ?>
				</tbody>
			</table>

		</div>

	</div>

    <div id="service" class="section md-padding">

		<div class="container">
      <div class="section-header text-center">
        <h2 class="title">Dodaj komentar</h2>
				<h4 id="rez"></h4>
      </div>

			<form action="upload.php" method= "POST" enctype="multipart/form-data">
				<div class="col-md-12">
					<label for="ime">Ime</label>
					<input type="text" class="form-control" placeholder="Ime" id="ime" name="ime">
				</div>
				<div class="col-md-12">
					<label for="text">Tekst</label>
					<input type="text" class="form-control" placeholder="Text" id="text" name="text">
				</div>
				<div class="col-md-12">
					<label for="fileToUpload">Slika</label>
					<input type="file" class="form-control" placeholder="Unesite sliku" id="fileToUpload" name="fileToUpload">
				</div>
				<br>
				<div class="col-md-12">
					<label for="submit"></label>
					<input type="submit" class="form-control" value="Sacuvaj" id="submit" name="submit">
				</div>
			</form>

		</div>
	</div>     



    <?php
			include 'footer.php';
	?>        

    <div id="back-to-top"></div>

	<div id="preloader">
		<div class="preloader">
			<span></span>
			<span></span>
			<span></span>
			<span></span>
		</div>
	</div>

	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="js/owl.carousel.min.js"></script>
	<script type="text/javascript" src="js/jquery.magnific-popup.js"></script>
	<script type="text/javascript" src="js/main.js"></script>
	<script type="text/javascript" src="//cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>

                
    <script>
      function vratiSvaPutovanja(){
          $.ajax({
            url: "metode.php",
            data: {operacija:'putovanja'},
            method: "GET",
            success: function(result){
							var nalepi = "";
							nalepi+='<table class="table table-hover">';
							nalepi+='<thead>';
							nalepi+='<tr>';
							nalepi+='<th>Putovanje ID</th>';
							nalepi+='<th>Naziv</th>';
							nalepi+='<th>Opis</th>';
							nalepi+='<th>Cena</th>';
							nalepi+='<th>Izmeni</th>';
							nalepi+='<th>Obrisi</th>';
							nalepi+='</tr>';
							nalepi+='</thead>';
							nalepi+='<tbody';
							$.each(JSON.parse(result),function(i,obj){

								nalepi+='<tr>';
								nalepi+='<td>'+obj.putovanjeID+'</td>';
								nalepi+='<td>'+obj.nazivPutovanja+'</td>';
								nalepi+='<td>'+obj.opisPutovanja+'</td>';
								nalepi+='<td>'+obj.cena+' eura</td>';
								nalepi+='<td><button class="btn btn-info" onclick="izmeni('+obj.putovanjeID+')">Izmeni</button></td>';
								nalepi+='<td><button class="btn btn-danger" onclick="obrisi('+obj.putovanjeID+')">Obrisi</button></td>';
								nalepi+='</tr>';
							});

							nalepi+='</tbody';
							nalepi+='</table';

							$("#putovanja").html(nalepi);
            }
          });

	  }    

      vratiSvaPutovanja();
   </script>    

     <script>
       function izmeni(id){
           $.ajax({
             url: "metode.php",
             data: {operacija:'putovanjaJedna',id:id},
             method: "GET",
             success: function(result){
 							var obj=JSON.parse(result);
							$("#naziv").val(obj.nazivPutovanja);
							$("#opis").val(obj.opisPutovanja);
							$("#cena").val(obj.cena);
							$("#id").val(obj.putovanjeID);
							$("#operacija").val("izmena");
             }
           });

       }

    </script>       
    	<script>
        function obrisi(id){
            $.ajax({
              url: "metode.php",
              data: {operacija:'putovanjaObrisi',id:id},
              method: "GET",
              success: function(result){
	 							$("#rez").html(result);
								vratiSvaPutovanja();
              }
            });

        }

     </script>       

<script>
     $(document).ready( function () {
        $('#tabelaKomentari').DataTable();
        } );

     </script>

    
</body>


</html>