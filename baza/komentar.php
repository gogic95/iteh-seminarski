<?php

class Komentar{

  public $komentarID;
  public $ime;
  public $text;
  public $slika;

  function __construct() {

  }
  public function save($konekcija){

      $sql = "INSERT INTO Komentari(ime,text,slika) VALUES('$this->ime','$this->text','$this->slika')";
      if($konekcija->query($sql)){
        return true;
      }

      return false;
  }

  public static function getAll($konekcija){
    $komentari = [];
    $upit = "SELECT * FROM Komentari";
    $rezultat = $konekcija->query($upit);
    while($jedanRed = $rezultat->fetch_assoc()){
      $t = new Komentar();
      $t->komentarID = $jedanRed['komentarID'];
      $t->ime = $jedanRed['ime'];
      $t->text = $jedanRed['text'];
      $t->slika = $jedanRed['slika'];
      array_push($komentari,$t);
    }
    return $komentari;
  }



}

 ?>