<?php

class Putovanje{

  public $putovanjeID;
  public $nazivPutovanja;
  public $opisPutovanja;
  public $cena;

  function __construct() {

  }

  public function setPutovanjeID($putovanjeID){
    $this->putovanjeID = $putovanjeID;
  }
  public function setNazivPutovanja($nazivPutovanja){
    $this->nazivPutovanja = $nazivPutovanja;
  }
  public function setOpisPutovanja($opisPutovanja){
    $this->opisPutovanja = $opisPutovanja;
  }
  public function setCena($cena){
    $this->cena = $cena;
  }
  public function getPutovanjeID(){
    return $this->putovanjeID;
  }
  public function getNazivPutovanja(){
    return $this->nazivPutovanja;
  }
  public function getOpisPutovanja(){
    return $this->opisPutovanja;
  }
  public function getCena(){
    return $this->cena;
  }

  public function save($konekcija){

      $sql = "INSERT INTO Putovanja(nazivPutovanja,opis,cena) VALUES('$this->nazivPutovanja','$this->opisPutovanja',$this->cena)";
      $podaci = [
        "naziv" => $this->nazivPutovanja,
        "opis" => $this->opisPutovanja,
        "cena" => $this->cena
      ];

        $json = json_encode($podaci);
  			$curl = curl_init("http://localhost/iteh-seminarski-master/api/novoPutovanje");
  			curl_setopt($curl, CURLOPT_POST, TRUE);
  			curl_setopt($curl, CURLOPT_POSTFIELDS, $json);
  			curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
  			$jsonOdgovor = curl_exec($curl);
  			curl_close($curl);
  			if($jsonOdgovor == "Uspesno") {
          return true;
  			}

      return false;
  }

  public function change($konekcija){

      $sql = "UPDATE Putovanja SET nazivPutovanja='$this->nazivPutovanja',opis='$this->opisPutovanja',cena=$this->cena where putovanjeID=$this->putovanjeID";
      if($konekcija->query($sql)){
        return true;
      }

      return false;
  }

  public function delete($konekcija){

      $sql = "DELETE FROM Putovanja where putovanjeID=$this->putovanjeID";
      if($konekcija->query($sql)){
        return true;
      }

      return false;
  }

  public static function getAll($konekcija){
    $putovanja = [];
    $upit = "SELECT * FROM putovanja";
    $rezultat = $konekcija->query($upit);
    while($jedanRed = $rezultat->fetch_assoc()){
      $putovanje = new Putovanje();
      $putovanje->setPutovanjeID($jedanRed['putovanjeID']);
      $putovanje->setNazivPutovanja($jedanRed['nazivPutovanja']);
      $putovanje->setOpisPutovanja($jedanRed['opis']);
      $putovanje->setCena($jedanRed['cena']);
      array_push($putovanja,$putovanje);
    }
    return $putovanja;
  }

  public static function getAllSorted($konekcija,$sort){

    $order = "";

    if($sort == 'rastuce'){
      $order = " order by cena asc";
    }
    if($sort == 'opadajuce'){
      $order = " order by cena desc";
    }

    $putovanja = [];
    $upit = "SELECT * FROM putovanja ".$order;
    $rezultat = $konekcija->query($upit);
    while($jedanRed = $rezultat->fetch_assoc()){
      $putovanje = new Putovanje();
      $putovanje->setPutovanjeID($jedanRed['putovanjeID']);
      $putovanje->setNazivPutovanja($jedanRed['nazivPutovanja']);
      $putovanje->setOpisPutovanja($jedanRed['opis']);
      $putovanje->setCena($jedanRed['cena']);
      array_push($putovanja,$putovanje);
    }
    return $putovanja;
  }

  public static function getOne($konekcija,$id){

    $upit = "SELECT * FROM putovanja where putovanjeID=$id";
    $rezultat = $konekcija->query($upit);
    $putovanje = new Putovanje();
    while($jedanRed = $rezultat->fetch_assoc()){

      $putovanje->setPutovanjeID($jedanRed['putovanjeID']);
      $putovanje->setNazivPutovanja($jedanRed['nazivPutovanja']);
      $putovanje->setOpisPutovanja($jedanRed['opis']);
      $putovanje->setCena($jedanRed['cena']);
    }
    return $putovanje;
  }

}

 ?>