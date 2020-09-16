<?php
include 'baza/putovanja.php';
include 'baza/komentar.php';
include 'konekcija.php';

if(isset($_GET['operacija'])){
  if($_GET['operacija'] == 'putovanja'){
      echo json_encode(Putovanje::getAll($konekcija));
  }

  if($_GET['operacija'] == 'putovanjaSort'){
      echo json_encode(Putovanje::getAllSorted($konekcija,$_GET['sort']));
  }
  if($_GET['operacija'] == 'putovanjaJedna'){
      echo json_encode(Putovanje::getOne($konekcija,$_GET['id']));
  }

  if($_GET['operacija'] == 'komentar'){
      echo json_encode(Komentar::getAll($konekcija));
  }
  if($_GET['operacija'] == 'putovanjaObrisi'){
    $id = $konekcija->real_escape_string(trim($_GET['id']));
    $putovanje = new Putovanje();
    $putovanje->setPutovanjeID($id);
    if($putovanje->delete($konekcija)){
      echo "Putovanje vise nije u ponudi. Uspesno obrisano.";
    }else{
      echo "Neuspesno obrisano putovanje.";
    }
  }
}

if(isset($_POST['putovanje'])){

  if($_POST['operacija'] == "izmena"){
    $naziv = $konekcija->real_escape_string(trim($_POST['naziv']));
    $opis = $konekcija->real_escape_string(trim($_POST['opis']));
    $cena = $konekcija->real_escape_string(trim($_POST['cena']));
    $id = $konekcija->real_escape_string(trim($_POST['id']));

    $putovanje = new Putovanje();
    $putovanje->setNazivPutovanja($naziv);
    $putovanje->setOpisPutovanja($opis);
    $putovanje->setCena($cena);
    $putovanje->setPutovanjeID($id);

    $putovanje->change($konekcija);
    header("Location: administracija.php");

  }else{
    $naziv = $konekcija->real_escape_string(trim($_POST['naziv']));
    $opis = $konekcija->real_escape_string(trim($_POST['opis']));
    $cena = $konekcija->real_escape_string(trim($_POST['cena']));

    $putovanje = new Putovanje();
    $putovanje->setNazivPutovanja($naziv);
    $putovanje->setOpisPutovanja($opis);
    $putovanje->setCena($cena);

    $putovanje->save($konekcija);
    header("Location: administracija.php");
  }
}



 ?>