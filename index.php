<?
mysql_select_db("fantamondiale", mysql_connect("localhost", "root", ""));
//date_default_timezone_set('Europe/Rome');
//Lw7LnEu8ZhmshIWD98CaoZhhrHPlp1mmiiUjsnnmMIwcZ3QhPC
/*array(
    "X-Mashape-Key" => "Lw7LnEu8ZhmshIWD98CaoZhhrHPlp1mmiiUjsnnmMIwcZ3QhPC",
    "Accept" => "application/json"
  )
  */
  define("URL", "http://worldcup.sfg.io/matches");
  $fields = array();
  $params = http_build_query($fields);

  $ch = curl_init();

  curl_setopt($ch, CURLOPT_URL, URL."?".$params);

  curl_setopt($ch, CURLOPT_HEADER, 0);
  curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
  curl_setopt($ch, CURLOPT_TIMEOUT, 10);
  $output = curl_exec($ch);

  curl_close($ch);


  $matches = json_decode($output);

  if(!empty($matches)){
  	foreach($matches as $match){

  		echo "<pre>";
  		print_r($match);
  		echo "</pre>";

  		$datetime = date("YmdHis", mktime(date("H", strtotime($match->datetime))-5, date("i", strtotime($match->datetime)), date("s", strtotime($match->datetime)), date("m", strtotime($match->datetime)), date("d", strtotime($match->datetime)), date("Y", strtotime($match->datetime))))."<br>";

  		if($match->home_team->code != 'TBD'){
  			$sqd1 = getTeam($match->home_team->country, $match->home_team->code);
  		}else{
  			$sqd1 = -1;
  		}
  		if($match->away_team->code != 'TBD'){
  			$sqd2 = getTeam($match->away_team->country, $match->away_team->code);
  		}else{
  			$sqd2 = -1;
  		}
  		$IDmatch = getMatch($sqd1, $sqd2, $goal1, $goal2, $datetime, $match->location);
  	}
  }

  function getTeam($nome, $sigla){
  	$q = mysql_query("SELECT ID FROM squadre WHERE nome = '".$nome."' OR sigla = '".$sigla."' LIMIT 1"); 
  	if($r = mysql_fetch_assoc($q)){
  		return $r['ID'];
  	}else{
  		mysql_query("INSERT INTO `squadre`(`nome`, `sigla`) VALUES ('".$nome."', '".$sigla."')") or die(mysql_error());
  		return mysql_insert_id();
  	}
  }

  function getMatch($sqd1, $sqd2, $goal1, $goal2, $datetime, $location){

  	$q = mysql_query("SELECT ID, squadra_1, squadra_2 FROM partite WHERE `datetime` = '".$datetime."' AND location = '".$location."' LIMIT 1") or die(mysql_error()); 
  	if($r = mysql_fetch_assoc($q)){

  		if($sqd1 > 0){
  			$q = mysql_query("UPDATE partite SET squadra_1 = '".$sqd1."' WHERE ID = '".$r['ID']."' LIMIT 1"); 
  		}
  		if($sqd2 > 0){
  			$q = mysql_query("UPDATE partite SET squadra_2 = '".$sqd2."' WHERE ID = '".$r['ID']."' LIMIT 1"); 
  		}

  		return $r['ID'];
  	}else{
  		mysql_query("INSERT INTO `partite`(`squadra_1`, `squadra_2`, `tipo`, `goal_1`, `goal_2`, `datetime`, `location`) VALUES ('".$sqd1."','".$sqd2."','','".$goal1."','".$goal2."','".$datetime."','".$location."')");
  		return mysql_insert_id();
  	}
  }
  ?>