<?php
class Database {
	private $hostname = "localhost";
	private $username = "root";
	private $password = "";
	private $dbname = "paradise";
	private $dblink;
	private $result = true;
	private $records;
	private $affectedRows;
 

	function __construct($dbname)
	{
		$this->$dbname = $dbname;
		$this->Connect();
	}

	public function getResult()
	{
		return $this->result;
	}

	function __destruct()
	{
		$this->dblink->close();
	}


	function Connect()
	{
		$this->dblink = new mysqli($this->hostname, $this->username, $this->password, $this->dbname);
		if($this->dblink->connect_errno)
		{
			printf("Konekcija neuspesna: %s\n",  $mysqli->connect_error);
			exit();
		}
		$this->dblink->set_charset("utf8");
	}

	function vratiPutovanja() {
		$mysqli = new mysqli("localhost", "root", "", "putovanja");
		$mysqli->set_charset("UTF8");
		$q = 'SELECT * FROM putovanja';
		$this ->result = $mysqli->query($q);
		$mysqli->close();
	}
	function vratiKomentare() {
		$mysqli = new mysqli("localhost", "root", "", "paradise");
		$mysqli->set_charset("UTF8");
		$q = 'SELECT * FROM komentari';
		$this ->result = $mysqli->query($q);
		$mysqli->close();
	}

	function jednaPutovanje($id) {
		$mysqli = new mysqli("localhost", "root", "", "paradise");
		$mysqli->set_charset("UTF8");
		$q = 'SELECT * FROM putovanja where putovanjeID = '.$id;
		$this ->result = $mysqli->query($q);
		$mysqli->close();
	}

	function unesiPutovanje($pod) {
		$mysqli = new mysqli("localhost", "root", "", "paradise");

		$naziv = trim($pod['naziv']);
		$opis = trim($pod['opis']);
		$cena = trim($pod['cena']);
		$upit = "INSERT INTO putovanja(nazivPutovanja,opis,cena) VALUES ('$naziv','$opis',$cena)";

		if($mysqli->query($upit))
		{
			$this ->result = true;
		}
		else
		{
			$this->result = false;
		}
		$mysqli->close();
	}



	function ExecuteQuery($query)
	{
		if($this->result = $this->dblink->query($query)){
			if (isset($this->result->num_rows)) $this->records         = $this->result->num_rows;
				if (isset($this->dblink->affected_rows)) $this->affected        = $this->dblink->affected_rows;
					return true;
		}
		else{
			return false;
		}
	}
}
?>
