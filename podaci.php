<?php
include 'konekcija.php';
$upit = "SELECT * from putovanja";

$brojacIspod200 = 0;
$brojac200Do500 = 0;
$brojacPreko500 = 0;

$rezultat = $konekcija->query($upit);
$niz = [];
while($red = $rezultat->fetch_assoc()){
  if(intval($red['cena']) < 200){
    $brojacIspod200++;
  }
  if(intval($red['cena']) < 500 && intval($red['cena']) > 200){
    $brojac200Do500++;
  }

  if(intval($red['cena']) > 500){
    $brojacPreko500++;
  }
}
$niz[0] = new Helper("Putovanja ispod 200 eura",$brojacIspod200);
$niz[1] =new Helper("Putovanja od 200 do 500",$brojac200Do500);
$niz[2] = new Helper("Putovanja preko 500 eura",$brojacPreko500);

echo(json_encode($niz));


class Helper{
  public $name;
  public $broj;

  public function __construct($name,$broj){
    $this->name = $name;
    $this->broj = $broj;
  }

}
 ?>